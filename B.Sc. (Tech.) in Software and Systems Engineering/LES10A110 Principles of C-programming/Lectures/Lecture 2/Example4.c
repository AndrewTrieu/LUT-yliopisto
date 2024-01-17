#include <stdio.h>
int main(void) {
int i = 0;
printf("for loop printing the value of i:\n");
for (i = 0; i <= 10; i = i + 2) {
printf("%d ", i);
}
printf("\nThe end of loop. Value of i is %d .\n",i);
return(0);
}