#include <stdio.h>
#include <string.h>

int main(void) {
    int i;
    char name[10] = "John";
     
        for (i=0; i < strlen(name); i++)    // strlen gives the length of the string
            printf("Index %d: %c -- %p\n", i, name[i], &name[i]);
        printf("\n");

return(0);
}