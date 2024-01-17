#include <stdio.h>
#include <stdlib.h>
#include "memory.h"
#include "io.h"
int main()
{
    srand(1);
    int *ptr, size, drawn;
    printf("Enter the size of the set:\n");
    scanf("%d", &size);
    printf("How many numbers are drawn:\n");
    scanf("%d", &drawn);
    ptr = allocateMemory(size);
    generateNumbers(ptr, drawn, size);
    printf("These numbers are drawn:\n");
    printNumbers(ptr, drawn);
}