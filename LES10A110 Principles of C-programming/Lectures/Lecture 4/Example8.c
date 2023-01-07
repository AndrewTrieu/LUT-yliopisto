#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int main () {
   float val;
   char str[20];
   
   strcpy(str, "3.141592653589793");
   val = atof(str);
   printf("String = %s, float = %.6f\n", str, val);

   strcpy(str, "C course");
   val = atof(str);
   printf("String = %s, float = %.6f\n", str, val);

   return(0);
}