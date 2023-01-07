#include <stdio.h>

int main(void) {

    int a;
    float b;
    char name[10] = "John";
    char c = 'a';
    
    a = 100;
    b = 5.64564564;
    
    printf("An integer %d and a float %0.2f by two decimals\n", a, b);
    printf("This is %s!\n", name);
    printf("The letter is \'%c\'.\n", c);
    return(0);
}