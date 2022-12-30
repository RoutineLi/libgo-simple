/*************************************************************************
	> File Name: Util.cpp
	> Author: lpj
	> Mail: lipeijie@vrvmail.com.cn
	> Created Time: 2022年10月25日 星期二 18时46分55秒
 ************************************************************************/

#include "Util.h"
#include "Log.h"
#include "Fiber.h"

#include <dirent.h>
#include <signal.h>
#include <unistd.h>

namespace Routn
{
	Logger::ptr g_logger = ROUTN_LOG_NAME("system");
	pid_t GetThreadId()
	{
		return syscall(SYS_gettid);
	}
	uint32_t GetFiberId()
	{
		return Fiber::GetFiberId();
	}
	void Backtrace(std::vector<std::string> &bt, int size, int skip)
	{
		void **array = (void **)malloc((sizeof(void *) * size));
		size_t s = ::backtrace(array, size);

		char **strings = backtrace_symbols(array, s);
		if (strings == NULL)
		{
			ROUTN_LOG_ERROR(g_logger) << "backtrace_symbols error";
			return;
		}
		for (size_t i = skip; i < s; ++i)
		{
			bt.push_back(strings[i]);
		}
		free(strings);
		free(array);
	}
	std::string BacktraceToString(int size, int skip, const std::string &prefix)
	{
		std::vector<std::string> bt;
		Backtrace(bt, size, skip);
		std::stringstream ss;
		for (size_t i = 0; i < bt.size(); ++i)
		{
			ss << prefix << bt[i] << std::endl;
		}
		return ss.str();
	}

	//获取高精度时间-ms
	uint64_t GetCurrentMs(){
		struct timeval tv;
		gettimeofday(&tv, NULL);
		return tv.tv_sec * 1000ul + tv.tv_usec / 1000;
	}
	
	//获取高精度时间-us
	uint64_t GetCurrentUs(){
		struct timeval tv;
		gettimeofday(&tv, NULL);
		return tv.tv_sec * 1000 * 1000ul + tv.tv_usec;		
	}


	std::string TimerToString(time_t ts, const std::string& format){
		struct tm tm;
		localtime_r(&ts, &tm);
		char buff[64];
		strftime(buff, sizeof(buff), format.c_str(), &tm);
		return std::string(buff);
	}

};
