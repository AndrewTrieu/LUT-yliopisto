// Demonstration of calloc and free

#include <stdio.h>
#include <stdlib.h>

int main () {
   int i, n, *a;

   printf("Number of elements to be entered:\n");
   scanf("%d",&n);

   a = (int*)calloc(n, sizeof(int));
   if (a == NULL) {
     printf("Error! memory not allocated.");
     exit(0);
     }

   printf("Enter %d numbers:\n",n);
   for( i=0 ; i < n ; i++ ) {
      scanf("%d",&a[i]);
   }

   printf("The numbers entered are: ");
   for( i=0 ; i < n ; i++ ) {
      printf("%d ", a[i]);
   }
   printf("\n");

   // free the memory 
   free(a);
   
   return(0);
}