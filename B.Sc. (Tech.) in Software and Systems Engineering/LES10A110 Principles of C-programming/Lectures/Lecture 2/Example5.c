#include <stdio.h>

int main(void) {

    int number;
    
    do {
        printf("Give an integer:\n");
        scanf("%d", &number);
    }
    while (number != 42);
}

