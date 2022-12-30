#include "../src/Routine.h"

using namespace Routn;

FiberMutex mutex;
IOManager iom(1);
int n;
void a(){
    for(int i = 0; i < 100000; ++i){
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

int main(int argc, char** argv){
    go a;
    return 0;
}