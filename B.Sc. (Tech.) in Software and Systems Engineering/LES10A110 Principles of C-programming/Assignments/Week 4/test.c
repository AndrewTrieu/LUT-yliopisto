#include <stdio.h>

int main(void)
{
    int mul = 1;
    int count = 0;
    int n = 100;
    int a = n / 2;
    for (int i = 0; i < (a); i++)
    {
        for (int y = 0; y < i; y++)
        {
            if (y == i)
            {
                mul *= (i);
                count++;
            }
        }
    }
    printf("%d\n", count);
}