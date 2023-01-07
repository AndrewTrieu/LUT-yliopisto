#include<stdio.h>

int main()
{
    int *arrop[3]; // arrow of pointers to integers
    int a = 10, b = 20, c = 50;

    arrop[0] = &a;
    arrop[1] = &b;
    arrop[2] = &c;

    for(int i = 0; i < 3; i++)
    {
        printf("Address = %p, value = %d\n", arrop[i], *arrop[i]);
    }

    return 0;
}