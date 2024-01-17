#include <stdio.h>

int main(void) {

    int a,b,c;

    a = 2147483647;

    printf("The number %d in HEX is %x.\n", a, a);

    b = a + 1;

    printf("The number %d in HEX is %x.\n", b, b);

    c = 1;
    printf("The number %d in HEX is %x.\n", c, c);
    printf("The number %d in HEX is %x.\n", -c, -c);

    return(0);
}
