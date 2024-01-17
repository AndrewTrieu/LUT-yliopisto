#include <stdio.h>
 
union Data {
   int i;
   double f;
};
 
int main( ) {
   union Data data;        
   printf( "Memory size occupied by data : %ld\n", sizeof(data));
   return 0;
}