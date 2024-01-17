#include <stdio.h>

int main(int argc, char *argv[])
{
    float a, b;
    char symbol;
    if (argc == 1)
    {
        printf("You did not enter any input.\n");
    }
    else if (argc == 4)
    {
        sscanf(argv[2], "%c", &symbol);
        sscanf(argv[1], "%f", &a);
        sscanf(argv[3], "%f", &b);
        if (symbol == '+')
        {
            printf("%.2f + %.2f = %.2f", a, b, a + b);
        }
        else if (symbol == '-')
        {
            printf("%.2f - %.2f = %.2f", a, b, a - b);
        }
        else if (symbol == 'x')
        {
            printf("%.2f x %.2f = %.2f", a, b, a * b);
        }
        else if (symbol == '/')
        {
            printf("%.2f / %.2f = %.2f", a, b, a / b);
        }
    }
    else
    {
        printf("Invalid input.\n");
    }
}