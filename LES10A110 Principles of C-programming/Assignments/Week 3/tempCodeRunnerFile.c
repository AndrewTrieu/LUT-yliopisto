
#include <stdio.h>
int algo(int m)
{
    for (int i = 0; i < m; i++)
    {
        if (i == m)
            return i;
    }

    int mul = 1;
    int n = 100000;
    int a = n / 2;
    for (int i = 0; i < (a); i++)
    {
        mul *= algo(i);
    }
    printf("%d", mul);
}