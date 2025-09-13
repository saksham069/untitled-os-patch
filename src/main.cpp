#include <iostream>
#include <cache.hpp>
#include <scheduler.hpp>

int main()
{
    std::cout << "OS Optimizer Starting...\n";
    init_scheduler();
    init_cache();
    return 0;
}
