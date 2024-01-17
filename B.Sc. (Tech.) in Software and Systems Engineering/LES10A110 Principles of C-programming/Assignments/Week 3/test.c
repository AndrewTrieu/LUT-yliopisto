#include <stdio.h>
int main(void)
{
    while (1)
    {
        FILE *fptr;
        char line[50];
        fptr = fopen("test.txt", "a");
        printf("Enter a name to add:\n");
        fgets(line, 50, stdin);
        fprintf(fptr, "%s", line);
        fclose(fptr);
    }
}