/*************************************************************************
	> File Name: FiberSync.h
	> Author: lpj
	> Mail: lipeijie@vrvmail.com.cn
	> Created Time: 2022年11月28日 星期一 01时07分29秒
 ************************************************************************/

#ifndef _FIBERSYNC_H
#define _FIBERSYNC_H

#include "IoManager.h"
#include "Noncopyable.h"
#include <cstdint>
#include <queue>

namespace Routn{
	class FiberMutex : public Noncopyable{
	public:
		using Lock = ScopedLockImpl<FiberMutex>;
		bool tryLock(){
			return _mutex.trylock();
		}
		void lock(){
			if(Fiber::GetFiberId() == _fiberId){
				return ;
			}
			while(!tryLock()){
				_guard.lock();

				if(tryLock()){
					_guard.unlock();
					_fiberId = Fiber::GetFiberId();
					return ;
				}
				auto self = Routn::Fiber::GetThis();
				_waitQueue.push(self);
				_guard.unlock();
				Fiber::YieldToHold();
			}
			_fiberId = Fiber::GetFiberId();
		}
		void unlock(){
			_guard.lock();
			_fiberId = 0;
			Fiber::ptr fiber;
			if(!_waitQueue.empty()){
				fiber = _waitQueue.front();
				_waitQueue.pop();
			}

			_mutex.unlock();
			_guard.unlock();
			if(fiber){
				IOManager::GetThis()->schedule(fiber);
			}
		}
	private:
		//co mutex
		Routn::SpinLock _mutex;
		//wait-queue mutex
		Routn::SpinLock _guard;
		//fiber id
		uint64_t _fiberId = 0;
		std::queue<Routn::Fiber::ptr> _waitQueue;
	};

	class FiberCond : public Noncopyable{
	public:
		using MutexType = Routn::SpinLock;
		void notify(){
			Fiber::ptr fiber;
			{
				MutexType::Lock lock(_mutex);
				if(_waitQueue.empty()){
					return ;
				}
				fiber = _waitQueue.front();
				_waitQueue.pop();
				if(_timer){
					_timer->cancel();
					_timer = nullptr;
				}
			}
			if(fiber){
				IOManager::GetThis()->schedule(fiber);
			}
		}
		void notifyAll(){
			MutexType::Lock lock(_mutex);
			while(_waitQueue.size()){
				Fiber::ptr fiber = _waitQueue.front();
				_waitQueue.pop();
				if(fiber){
					IOManager::GetThis()->schedule(fiber);
				}
				if(_timer){
					_timer->cancel();
					_timer = nullptr;
				}
			}
		}
		void wait(FiberMutex::Lock& lock){
			Fiber::ptr self = Fiber::GetThis();
			{
				MutexType::Lock lock1(_mutex);
				_waitQueue.push(self);
				if(!_timer){
					_timer = IOManager::GetThis()->addTimer(1000, [](){}, true);
				}
				lock.unlock();
			}
			Fiber::YieldToHold();
			lock.lock();
		}

	private:
		std::queue<Fiber::ptr> _waitQueue;
		MutexType _mutex;
		Timer::ptr _timer;
	};

	class FiberSem : public Noncopyable{
	public:
		FiberSem(uint32_t num)
			: _num(num)
			, _used(0){
		}
		void wait(){
			FiberMutex::Lock lock(_mutex);
			while(_used >= _num){
				_cond.wait(lock);
			}
			++_used;
		}
		void notify(){
			FiberMutex::Lock lock(_mutex);
			if(_used > 0){
				--_used;
			}
			_cond.notify();
		}
	private:
		uint32_t _num;
		uint32_t _used;
		FiberCond _cond;
		FiberMutex _mutex;
	};

	template<class T>
	class ChannelImpl : public Noncopyable{
	public:
		ChannelImpl(size_t capacity)
			: _isClose(false)
			, _capacity(capacity){

		}
		~ChannelImpl(){
			close();
		}
		bool push(const T& t){
			FiberMutex::Lock lock(_mutex);
			if(_isClose){
				return false;
			}
			while(_queue.size() >= _capacity){
				_pushCond.wait(lock);
				if(_isClose){
					return false;
				}
			}
			_queue.push(t);
			_popCond.notify();
			return true;
		}
		bool pop(T& t){
			FiberMutex::Lock lock(_mutex);
			if(_isClose)
				return false;
			while(_queue.empty()){
				_popCond.wait(lock);
				if(_isClose){
					return false;
				}
			}
			t = _queue.front();
			_queue.pop();
			_pushCond.notify();
			return true;
		}
		ChannelImpl& operator>>(T& t){
			pop(t);
			return *this;
		}

		ChannelImpl& operator<<(const T& t){
			push(t);
			return *this;
		}
		void close(){
			FiberMutex::Lock lock(_mutex);
			if(_isClose){
				return ;
			}
			_isClose = true;
			_pushCond.notify();
			_popCond.notify();
			std::queue<T> q;
			std::swap(_queue, q);
		}
		operator bool(){
			return !_isClose;
		}
	private:
		bool _isClose;
		size_t _capacity;
		FiberMutex _mutex;
		FiberCond _pushCond;
		FiberCond _popCond;
		std::queue<T> _queue;
	};
	
	template<class T>
	class Channel{
	public:
		using ptr = std::shared_ptr<ChannelImpl<T>>;
		Channel(size_t capacity){
			_channel = std::make_shared<ChannelImpl<T>>(capacity);
		}
		Channel(const Channel& chan) {
			_channel = chan._channel;
		}
		void close() {
			_channel->close();
		}
		operator bool() const {
			return *_channel;
		}

		bool push(const T& t) {
			return _channel->push(t);
		}

		bool pop(T& t) {
			return _channel->pop(t);
		}

		Channel& operator>>(T& t) {
			(*_channel) >> t;
			return *this;
		}

		Channel& operator<<(const T& t) {
			(*_channel) << t;
			return *this;
		}

		size_t capacity() const {
			return _channel->capacity();
		}

		size_t size() {
			return _channel->size();
		}

		bool empty() {
			return _channel->empty();
		}

		bool unique() const {
			return _channel.unique();
		}
	private:
		Channel::ptr _channel;
	};
}

#endif
