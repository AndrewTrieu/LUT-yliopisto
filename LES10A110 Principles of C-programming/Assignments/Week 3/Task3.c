#include <stdio.h>
#include <string.h>
int compare_integer()
{
    int x, y;
    printf("Enter two integers:\n");
    scanf(" %d\n%d", &x, &y);
    if (x > y)
        printf("Number %d is bigger and %d is smaller.\n", x, y);
    else if (x < y)
        printf("Number %d is bigger and %d is smaller.\n", y, x);
    else
        printf("Number %d and %d are equal.\n", x, y);
}
int compare_decimal()
{
    float x, y;
    printf("Enter two decimal numbers:\n");
    scanf(" %f\n%f", &x, &y);
    if (x > y)
        printf("Number %5.2f is bigger and %5.2f is smaller.\n", x, y);
    else if (x < y)
        printf("Number %5.2f is bigger and %5.2f is smaller.\n", y, x);
    else
        printf(" Number %5.2f and %5.2f are equal.\n ", x, y);
}
int compare_string()
{
    char x[256], y[256];
    printf("Enter two strings:\n");
    scanf(" %s %s", &x, &y);
    if (strcmp(x, y) > 0)
        printf("As a string, '%s' is bigger and '%s' is smaller.\n", x, y);
    else if (strcmp(x, y) < 0)
        printf("As a string, '%s' is bigger and '%s' is smaller.\n", y, x);
    else
        printf("As a string, '%s' and '%s' are equal.\n", x, y);
}
int main(void)
{
    while (1)
    {
        int choice;
        printf("Select from the options below\n1) Compare Integers\n2) Compare Decimals\n3) Compare Strings\n0) Exit\nEnter your selection:\n");
        scanf(" %d", &choice);
        getchar();
        if (choice == 0)
        {
            return 0;
        }
        switch (choice)
        {
        case 1:
            compare_integer();
            break;
        case 2:
            compare_decimal();
            break;
        case 3:
            compare_string();
            break;
        default:
            printf("Unknown option.\n");
            break;
        }
    }
}