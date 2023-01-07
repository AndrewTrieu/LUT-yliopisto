#include <stdio.h>
void square(int *number)
{
    *number = *number * *number;
    return;
}

int main(int argc, char *argv[])
{
    int x;

    if (argc == 1)
    {
        printf("You did not enter a number!\n");
    }
    else if (argc == 2)
    {
        sscanf(argv[1], "%d", &x);
        printf("The number is %d\n", x);
        square(&x);
        printf("The number is %d\n", x);
    }
    else
    {
        printf("Invalid input.\n");
    }
}