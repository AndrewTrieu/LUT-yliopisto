#include <stdio.h>
#include <stdlib.h>

void fillArray(int *array, int size)
{
    for (int i = 0; i < size; i++)
    {
        array[i] = i;
    }
}
int *createArray(int size)
{
    int *array;
    array = (int *)malloc(size * sizeof(int));
    fillArray(array, size);
    return array;
}
void printArray(int *array, int size)
{
    if (size == 0)
    {
        printf("the array is empty.\n");
    }
    else
    {
        printf("The array includes the numbers: ");
        for (int i = 0; i < size; i++)
        {
            printf("%d ", array[i]);
        }
        printf("\n");
    }
}
int main(void)
{
    int size = 0, i, *ptr;
    ptr = createArray(size);
    while (1)
    {
        printf("1) Print the items in the array\n2) Resize the array\n0) Stop\nSelect an Item:\n");
        scanf(" %d", &i);
        switch (i)
        {
        case 1:
            printArray(ptr, size);
            break;
        case 2:
            printf("Enter a new size for the array:\n");
            scanf(" %d", &size);
            if (size < 0)
            {
                printf("Array size can't be negative.\n");
                return 0;
            }
            else
            {
                if ((int *)realloc(ptr, sizeof(int) * size) != NULL)
                {
                    fillArray(ptr, size);
                }
            }
            break;
        case 0:
            return 0;
        default:
            printf("Unknown selection, please try again.\n");
            break;
        }
    }
}
