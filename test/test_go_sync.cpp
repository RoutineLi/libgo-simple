#include "../src/Routine.h"

using namespace Routn;

FiberMutex mutex;
FiberCond cond;

static Logger::ptr g_root = ROUTN_LOG_ROOT();

int n;
void a(){
    for(int i = 0; i < 4; ++i){
        FiberMutex::Lock lock(mutex);
        ++n;
    }
}

void b(){
    for(int i = 0; i < 100000; ++i){
        FiberMutex::Lock lock(mutex);
        ++n;
    }
}

void consume(){
    FiberMutex::Lock lock(mutex);
    ROUTN_LOG_INFO(g_root) << "consumer await";
    cond.wait(lock);
    ROUTN_LOG_INFO(g_root) << "consumer consumed";
}


void consume2(){
    FiberMutex::Lock lock(mutex);
    ROUTN_LOG_INFO(g_root) << "consumer await";
    cond.wait(lock);
    ROUTN_LOG_INFO(g_root) << "consumer consumed";
}

void publish(){
    sleep(2);
    ROUTN_LOG_INFO(g_root) << "publish one";
    cond.notify();
    sleep(2);
    ROUTN_LOG_INFO(g_root) << "publish one";
    cond.notify();
}

// void test(){
//     // struct timeval tv;
//     // gettimeofday(&tv, NULL);
//     struct timespec ts;
//     clock_gettime(CLOCK_MONOTONIC_RAW, &ts);
//     auto time = ts.tv_sec * 1000ul + ts.tv_nsec / 1000000;
//     auto str = Routn::TimerToString(time);
//     std::cout << L_GREEN << str << _NONE << std::endl;

// }

int main(int argc, char** argv){

    IOManager iom(1);
    go a;
    Channel<int> chan(1);
    Go{
        for(int i = 0; i < 10; ++i){
            chan << i;
            ROUTN_LOG_INFO(g_root) << "send: " << i;
        }
        chan.close();
    };

    Go{
        int i;
    
        while(chan >> i){
            ROUTN_LOG_INFO(g_root) << "recv: " << i;
        }
    };

    go consume;
    go consume2;
    go publish;


    return 0;
}