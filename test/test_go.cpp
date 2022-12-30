#include "../src/Routine.h"

using namespace Routn;

Logger::ptr g_root = ROUTN_LOG_ROOT();

void add(int a, int b){
    ROUTN_LOG_DEBUG(g_root) << a << " + " << b << " = " << a + b;
}

void func(){
    ROUTN_LOG_DEBUG(g_root) << "simple libgo";
}

int main(int argc, char** argv){
    IOManager iom(1);
    go std::bind(&add, 1, 2);
    go func;
    go[]{
        ROUTN_LOG_DEBUG(g_root) << "lambda";
    };

    std::string str = "hello";

    //默认按值捕获全部局部变量
    Go{
        str += " routn";
        printf(L_GREEN "%s\n" _NONE, str.c_str());
    };
}