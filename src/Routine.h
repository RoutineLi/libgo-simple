/*************************************************************************
	> File Name: Routine.h
	> Author: lpj
	> Mail: lipeijie@vrvmail.com.cn
	> Created Time: 2022年12月30日 星期五 16时58分13秒
 ************************************************************************/

#ifndef _ROUTINE_H
#define _ROUTINE_H

#include "Macro.h"
#include "Log.h"
#include "Hook.h"
#include "Fiber.h"
#include "FiberSync.h"
#include "IoManager.h"
#include "Scheduler.h"
#include "Config.h"

#define go (*Routn::IOManager::GetThis()) + 
#define Go (*Routn::IOManager::GetThis()) + [=]()mutable
#endif
