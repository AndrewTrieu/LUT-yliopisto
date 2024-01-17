#include <stdio.h>

int main(int argc, char *argv[])
{
    float x;
    float y;
    char *operator= argv[2];
    if (argc == 1)
    {
        printf("You did not enter any input.\n");
    }
    else if (argc == 4)
    {
        sscanf(argv[1], "%f", &x);
        sscanf(argv[3], "%f", &y);
        switch (*operator)
        {
        case '+':
            printf("%.2f + %.2f = %.2f", x, y, x + y);
            break;
        case '-':
            printf("%.2f - %.2f = %.2f", x, y, x - y);
            break;
        case 'x':
            printf("%.2f x %.2f = %.2f", x, y, x * y);
            break;
        case '/':
            printf("%.2f / %.2f = %.2f", x, y, x / y);
            break;
        }
    }
    else if (argc != 4 || argc != 1)
    {
        printf("Invalid input.\n");
    }
}