#include <stdio.h>
int Fibo(int n)
{
    if (n == 0)
        return 0;
    else if (n == 1)
        return 1;
    else
    {
        return (Fibo(n - 1) + Fibo(n - 2));
    }
}
int main(void)
{
    int num;
    printf("Enter the number for which the Fibonacci number is calculated:\n");
    scanf("%d", &num);
    printf("%d\n", Fibo(num));
}