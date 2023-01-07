#include <stdio.h>
 
/* function declaration */
int max(int num1, int num2);
 
int main () {

    /* variables for main */
    int a,b, ret;
 
    /* calling a function to get max value */
    printf("Enter two integers:\n");
    scanf("%d %d", &a, &b);
    ret = max(a, b);
    printf( "Max value is: %d\n", ret );
 
    return 0;
}
 
/* function returning the max between two numbers */
int max(int num1, int num2) {

   /* local variable declaration for the function  */
   int result;
 
   if (num1 > num2)
      result = num1;
   else
      result = num2;
 
   return result; 
}