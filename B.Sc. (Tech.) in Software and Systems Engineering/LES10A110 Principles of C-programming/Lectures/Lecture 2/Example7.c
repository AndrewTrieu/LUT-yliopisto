#include <stdio.h>

int main(void) {

    char str[] = "I love C language";
    char *ptr;
    //int index = 0;

    ptr = str;

    while (*ptr != '\0') {
        printf("%c - %p \n", *ptr, ptr);
        //index++;
        ptr++;
    }

    return(0);
}

// what is &*ptr ??