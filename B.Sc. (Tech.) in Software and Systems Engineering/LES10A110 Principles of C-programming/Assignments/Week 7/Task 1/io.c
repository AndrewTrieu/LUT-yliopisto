#include <stdio.h>
int readStepsList(int list[], int *size)
{
    FILE *fp = fopen("stepdata.txt", "r");
    char temp[1024];
    int id = 0;
    char date[20];
    if (fp != NULL)
    {
        while (!feof(fp))
        {
            fgets(temp, 1024, fp);
            sscanf(temp, "%s %d", date, &list[id]);
            id++;
        }
        return id;
    }
    else
    {
        printf("File not found.\n");
        return id;
    }
}
void printList(int list[], int size)
{
    if (size != 0)
    {
        int sum = 0;
        printf("Steps in the list: ");
        for (int i = 0; i < size; i++)
        {
            printf("%d ", list[i]);
            sum += list[i];
        }
        printf("\n");
        printf("Sum of steps is %d", sum);
    }
}