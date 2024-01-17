#include <stdlib.h>
#include <stdio.h>
#include <string.h>
int read_file(const char *name)
{
    FILE *fptr;
    char contents[50];
    fptr = fopen(name, "r");
    if (fptr == NULL)
    {
        printf("Failed to open file, terminating\n");
        exit(0);
    }
    while (fgets(contents, 50, fptr) != NULL)
    {
        printf("%s", contents);
    }
    printf("File read and printed.\n");
    fclose(fptr);
    return (0);

    fclose(fptr);
}
int write_file(const char *name)
{
    FILE *fptr;
    char line[50];
    fptr = fopen(name, "a");
    printf("Enter a name to add:\n");
    fgets(line, 50, stdin);
    fprintf(fptr, "%s", line);
    fclose(fptr);
}
int main(void)
{

    // char s1[1000], s2[] = ".txt";
    char name[1000];
    int i, j;
    printf("Enter the name of the file to be processed:\n");
    // gets(s1);
    scanf(" %s", &name);
    // j = strlen(s1);
    // for (i = 0; s2[i] != '\0'; i++)
    //{
    //     s1[i + j] = s2[i];
    // }
    // s1[i + j] = '\0';
    while (1)
    {
        int choice;

        printf("Select from the options below\n1) Add a new name\n2) Print names\n0) Exit\n");
        printf("Enter your selection:\n");
        scanf(" %d", &choice);
        getchar();
        if (choice == 0)
        {
            return 0;
        }
        switch (choice)
        {
        case 1:
            write_file(name);
            break;
        case 2:
            read_file(name);
            break;
        default:
            printf("Unknown option.\n");
        }
    }
}