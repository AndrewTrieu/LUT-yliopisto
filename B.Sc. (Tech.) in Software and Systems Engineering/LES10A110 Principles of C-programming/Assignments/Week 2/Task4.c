#include <stdio.h>
#define Pi 3.141
int main()
{
    int choice;
    float num;
    printf("Enter a floating-point number:\n");
    scanf("%f", &num);
    printf("MENU\n");
    printf("1: Multiply Pi by %.3f.\n", num);
    printf("2: Divide Pi by %.3f.\n", num);
    scanf("%d", &choice);
    switch (choice)
    {
    case 1:
        printf("Pi * %.3f = %.3f.", num, num * Pi);
        break;
    case 2:
        printf("Pi / %.3f = %.3f.", num, Pi / num);
        break;
    default:
        printf("Unknown selection.");
    }
}