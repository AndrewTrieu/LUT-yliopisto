#include <stdio.h>
#include <stdlib.h>
int sizeCheck(int size)
{
    if (size <= 0)
        return 0;
    else
        return 1;
}
int *createArray(int size)
{
    int *array;
    array = (int *)malloc(size * sizeof(int));
    if (array == NULL)
    {
        printf("Memory allocation failed.");
        exit(0);
    }
    else
    {
        printf("Memory allocated successfully.\nThe array has %d elements.\n", size);
        return array;
    }
}
void fillArray(int *array, int size)
{
    for (int i = 0; i < size; i++)
    {
        printf("Enter number %d:\n", i + 1);
        scanf(" %d", &array[i]);
    }
    printf("Array filled.\n");
}
void printArray(int *array, int size)
{
    printf("The array includes the numbers: ");
    for (int i = 0; i < size; i++)
    {
        printf("%d ", array[i]);
    }
    printf("\n");
    printf("Array is printed.\n");
}
void freeMemory(int *array)
{
    printf("Memory freed.\n");
    free(array);
}
int main(int argc, char *argv[])
{
    int x = atoi(argv[1]);
    if (argc = 1)
    {
        if (sizeCheck(x) == 0)
        {
            printf("The parameter was not a positive integer.\n");
        }
        else
        {
            int *ptr;
            ptr = createArray(x);
            fillArray(ptr, x);
            printArray(ptr, x);
            freeMemory(ptr);
        }
    }
    else
    {
        printf("You did not give an argument.\n");
    }
}
