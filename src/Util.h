/*************************************************************************
	> File Name: Util.h
	> Author: lpj
	> Mail: lipeijie@vrvmail.com.cn
	> Created Time: 2022年10月25日 星期二 18时42分15秒
 ************************************************************************/

#ifndef _UTIL_H
#define _UTIL_H

#include <boost/lexical_cast.hpp>
#include <vector>
#include <sys/types.h>
#include <sys/time.h>
#include <unistd.h>
#include <syscall.h>
#include <stdint.h>
#include <stdlib.h>
#include <stdio.h>
#include <string>
#include <sys/stat.h>
#include <execinfo.h>

namespace Routn
{

	pid_t GetThreadId();

	uint32_t GetFiberId();

	void Backtrace(std::vector<std::string> &bt, int size, int skip = 1);

	std::string BacktraceToString(int size, int skip = 2, const std::string &prefix = " ");

	//获取高精度时间-ms
	uint64_t GetCurrentMs();
	//获取高精度时间-us
	uint64_t GetCurrentUs();

	std::string TimerToString(time_t ts = time(0), const std::string& format = "%Y-%m-%d %H:%M:%S");


	///无锁操作
	class Atomic {
	public:
		template<class T, class S = T>
		static T addFetch(volatile T& t, S v = 1) {
			return __sync_add_and_fetch(&t, (T)v);
		}

		template<class T, class S = T>
		static T subFetch(volatile T& t, S v = 1) {
			return __sync_sub_and_fetch(&t, (T)v);
		}

		template<class T, class S>
		static T orFetch(volatile T& t, S v) {
			return __sync_or_and_fetch(&t, (T)v);
		}

		template<class T, class S>
		static T andFetch(volatile T& t, S v) {
			return __sync_and_and_fetch(&t, (T)v);
		}

		template<class T, class S>
		static T xorFetch(volatile T& t, S v) {
			return __sync_xor_and_fetch(&t, (T)v);
		}

		template<class T, class S>
		static T nandFetch(volatile T& t, S v) {
			return __sync_nand_and_fetch(&t, (T)v);
		}

		template<class T, class S>
		static T fetchAdd(volatile T& t, S v = 1) {
			return __sync_fetch_and_add(&t, (T)v);
		}

		template<class T, class S>
		static T fetchSub(volatile T& t, S v = 1) {
			return __sync_fetch_and_sub(&t, (T)v);
		}

		template<class T, class S>
		static T fetchOr(volatile T& t, S v) {
			return __sync_fetch_and_or(&t, (T)v);
		}

		template<class T, class S>
		static T fetchAnd(volatile T& t, S v) {
			return __sync_fetch_and_and(&t, (T)v);
		}

		template<class T, class S>
		static T fetchXor(volatile T& t, S v) {
			return __sync_fetch_and_xor(&t, (T)v);
		}

		template<class T, class S>
		static T fetchNand(volatile T& t, S v) {
			return __sync_fetch_and_nand(&t, (T)v);
		}

		template<class T, class S>
		static T compareAndSwap(volatile T& t, S old_val, S new_val) {
			return __sync_val_compare_and_swap(&t, (T)old_val, (T)new_val);
		}

		template<class T, class S>
		static bool compareAndSwapBool(volatile T& t, S old_val, S new_val) {
			return __sync_bool_compare_and_swap(&t, (T)old_val, (T)new_val);
		}
	};

	template<class T>
	void nop(T*) {}

};

#endif
