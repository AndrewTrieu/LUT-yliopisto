#include <stdio.h>
int main()
{
    char a;
    char b[20];
    printf("Give a character:\n");
    scanf("%c", &a);
    printf("You entered '%c'.\n", a);
    printf("Give a string (max. 20 characters):\n");
    scanf("%s", &b);
    printf("You entered the string '%s'.\n", b);
}