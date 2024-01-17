// demonstration of realloc

#include <stdio.h>
#include <stdlib.h>
int main()
{
   int *ptr = (int *)malloc(sizeof(int)*2); // two integers
   int i;
   int *ptr_new;
     
   *ptr = 10; 
   *(ptr + 1) = 20;

   // use realloc to have a space for three integers
     
   ptr_new = (int *)realloc(ptr, sizeof(int)*3); // three integers
   *(ptr_new + 2) = 30;
   for(i = 0; i < 3; i++)
       printf("%d ", *(ptr_new + i));
  
   printf("\n");
   return 0;
}