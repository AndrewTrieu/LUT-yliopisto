#include <stdio.h>
int main()
{
    int num;
    int hold = 1;
    printf("Enter an integer from 1 to 10:\n");
    scanf("%d", &num);
    if (num >= 1 && num <= 10)
    {
        while (hold <= num)
        {
            printf("Round %d...\n", hold);
            hold++;
        }
    }
    else
    {
        printf("The number you entered is not between 1-10.");
    }
}