// Program to compare two integers

#include <stdio.h>

int main() {
    int number1, number2;
    printf("Enter two integers separated by blank: ");
    scanf("%d %d", &number1, &number2);

    // are  the two integers are equal.
    if (number1 == number2) {
        printf("Result: %d = %d \n",number1,number2);
    }

    // if number1 is greater than number2.
    else if (number1 > number2) {
        printf("Result: %d > %d \n", number1, number2);
    }

    // if both test expressions are false
    else {
        printf("Result: %d < %d \n",number1, number2);
    }

    return 0;
}