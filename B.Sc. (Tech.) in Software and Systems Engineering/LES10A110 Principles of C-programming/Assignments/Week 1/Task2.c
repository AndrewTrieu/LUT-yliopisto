#include <stdio.h>
int main()
{
    int integer;
    float fpoint;
    printf("Give an integer:\n");
    scanf("%d", &integer);
    printf("Give a decimal number:\n");
    scanf("%f", &fpoint);
    printf("You entered the numbers %d and %0.2f.\n", integer, fpoint);
}
