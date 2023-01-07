#include <stdio.h>
int main()
{
    int integer;
    float num;
    char c;

    char testString[20];
    char S2[] = "House";

    printf("Enter an integer: ");
    scanf("%d", &integer);  
    printf("Number = %d.\n", integer);
    
    printf("\n"); // empty line

    printf("Enter a decimal number: ");
    scanf("%f", &num);

    printf("num1 = %f\n", num);

    printf("\n"); // empty line

    printf("Enter a string: ");
    scanf("%s", testString);  

    printf("You entered %s.\n", testString);  
    //getchar();
    setbuf(stdin , NULL); // empty the buffer

    printf("Enter a char: ");
    c = getchar();
    printf("You entered %c\n",c);
 
    printf("Character %c is ASCII %d\n", S2[0], S2[0]);
    printf("Character %c is ASCII %d\n", S2[4], S2[4]);
    printf("Character %c is ASCII %d\n", S2[5], S2[5]);

    return 0;
}