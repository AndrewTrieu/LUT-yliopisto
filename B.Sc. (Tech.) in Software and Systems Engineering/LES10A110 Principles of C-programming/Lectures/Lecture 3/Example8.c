#include <stdio.h>
#define square(x) (x*x)

int main(void) {
    printf("square(3) returns %d.\n", square(3));
    printf("square(3+1) returns %d.\n", square(3+1));
    return(0);
}