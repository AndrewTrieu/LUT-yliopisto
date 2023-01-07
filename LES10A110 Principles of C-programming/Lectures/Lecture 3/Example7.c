#include <stdio.h>
void increment1(int var)
{
    /* call by value
     * the change in var is not affecting */
    var = var+1;
    return;
}

void increment2(int *var)
{
    /* call by reference
     * The change affects "everywhere"
     */
    *var = *var+1;
     return;
}

int main()
{
    int num=20;
    increment1(num);
    printf("After \'increment1\' value of num is: %d \n", num);
    increment2(&num);
    printf("After \'increment2\' value of num is: %d \n", num);
   return 0;
}