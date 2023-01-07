#include <stdio.h>
#include "sum.h"  /* Include the header here, to obtain the function declaration */
#include "prod.h" 

int main(void)
{
    int x = sum(4,5); 
    int y = prod(4,5);   
    printf("sum %d and product %d\n", x, y);
    return 0;
}