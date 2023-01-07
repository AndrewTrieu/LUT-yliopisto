#include <stdio.h>
#include <stdlib.h>
int checkNumber(int list[], int size, int num)
{
    for (int i = 0; i < size; i++)
    {
        if (list[i] == num)
        {
            return 1;
        }
    }
    return 0;
}
void generateNumbers(int list[], int size, int max)
{
    int num;
    for (int i = 0; i < size; i++)
    {
        while (1)
        {
            num = (rand() % max) + 1;
            if (checkNumber(list, size, num) == 0)
            {
                list[i] = num;
                break;
            }
        }
    }
}

void printNumbers(int list[], int size)
{
    for (int i = 0; i < size; i++)
    {
        printf("%d ", list[i]);
    }
}
