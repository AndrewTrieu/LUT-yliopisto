// Another program to compare integers

#include <stdio.h>

int main() {
    int number1, number2, bigger;

    printf("Enter two integers separated by blank: ");
    scanf("%d %d", &number1, &number2);

    bigger = number1 > number2 ? number1 : number2;

    printf("Number %d is the maximum of %d and %d.\n", bigger, number1, number2);
    
    return 0;
}