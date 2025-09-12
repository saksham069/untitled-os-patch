#include <stdio.h>
#include "cache.h"
#include "scheduler.h"

int main()
{
    printf("OS Optimizer Starting...\n");
    init_scheduler();
    init_cache();
    return 0;
}
