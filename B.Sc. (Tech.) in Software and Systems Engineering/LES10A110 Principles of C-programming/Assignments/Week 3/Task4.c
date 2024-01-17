#include <stdio.h>
#include <string.h>
char choice[256], copy[256];
int strLenght(char s[])
{
    int count = 0;
    for (int i = 0; s[i] != '#'; i++)
    {
        count++;
    }
    return count;
}
int copyString(char s1[], char s2[])
{
    int i;
    for (i = 0; i < strLenght(s1) + 1; i++)
    {
        s2[i] = s1[i];
    }
    s2[i] = '\0';
}
int printString(char s[])
{
    int i;
    for (int k = 0; k < 2; k++)
    {
        for (i = 0; i < strLenght(s); i++)
        {
            printf("%c", s[i]);
        }
        printf("\n");
    }
}
int main(void)
{
    printf("Enter a string to copy:\n");
    fgets(choice, 256, stdin);
    copyString(choice, copy);
    printString(copy);
}
