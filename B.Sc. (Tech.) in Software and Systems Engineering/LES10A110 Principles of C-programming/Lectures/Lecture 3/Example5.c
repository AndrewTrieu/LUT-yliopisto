#include <stdio.h>
void demo(void); /* Declaration of the function */

int main(void) {
    printf("We are in main program!\n");
    demo(); /* Calling the "demo" function */
    return(0);
    }

void demo(void) { 
    printf("We are inside the function!\n");
    return;
    }
