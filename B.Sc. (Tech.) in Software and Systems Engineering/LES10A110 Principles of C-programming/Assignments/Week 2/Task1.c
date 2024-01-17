#include <stdio.h>
int main()
{
    int a, b, choice;
    printf("Enter two integers:\n");
    scanf("%d %d", &a, &b);
    printf("1: Add numbers\n");
    printf("2: Multiply numbers\n");
    scanf("%d", &choice);
    if (choice == 1)
    {
        printf("Numbers were added together. Result = %d.", (a + b));
    }
    else if (choice == 2)
    {
        printf("Numbers were multiplied. Result = %d.", (a * b));
    }
    else
    {
        printf("Unknown selection.");
    }
}