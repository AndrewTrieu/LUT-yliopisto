#include <stdio.h>
int calc(int x, int y)
{
    int res = 1;
    for (int i = 1; i <= y; i++)
    {
        res *= x;
    }
    return res;
}
int main(void)
{
    while (1)
    {
        int a, b, c;
        char choice;
        printf("Enter the base (integer):\n");
        scanf(" %d", &a);
        printf("Enter the exponent (positive integer):\n");
        scanf(" %d", &b);
        printf("%d^%d = %d.\n", a, b, calc(a, b));
        printf("Do you want to continue? (yes = y, no = any other key)\n");
        scanf(" %c", &choice);
        if (choice != 'y')
        {
            break;
        }
    }
    return 0;
}