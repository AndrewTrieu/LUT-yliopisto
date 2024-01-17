#include "io.h"
int main()
{
    int *size;
    int list[50];
    printList(list, readStepsList(list, size));
}