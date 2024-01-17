#include <stdio.h>
int main()
{
    int a, b;
    printf("Enter the first integer:\n");
    scanf("%d", &a);
    printf("Enter the second integer:\n");
    scanf("%d", &b);
    printf("Calculations:\n");
    printf("(%d + %d) * 2 = %d\n", a, b, ((a + b) * 2));
    printf("(%d / %d) - 3 = %d\n", a, b, ((a / b) - 3));
    printf("%d %% %d  = %d\n", (a + 1), (b - 1), ((a + 1) % (b - 1)));
}