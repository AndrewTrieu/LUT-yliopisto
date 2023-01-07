#include <stdio.h>
int main()
{
    int num;
    int total = 0;
    printf("Enter a number between 10 and 200:\n");
    scanf("%d", &num);
    if (num >= 10 && num <= 200)
    {
        for (int i = 1; i <= num; i++)
        {
            total += i;
        }
        printf("The sum of the numbers 0 to %d is %d.", num, total);
    }
    else
    {
        printf("The number you entered is not within the given range.");
    }
}