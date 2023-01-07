#include <stdio.h>
#include <stdlib.h>
int *allocateMemory(int n)
{
    int *ptr;
    ptr = (int *)malloc(n * sizeof(int));
    return ptr;
}
