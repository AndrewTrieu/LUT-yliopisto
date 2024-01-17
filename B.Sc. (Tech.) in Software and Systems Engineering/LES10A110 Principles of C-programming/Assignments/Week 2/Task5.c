#include <stdio.h>
int main()
{
    int choice;
    int length = 0;
    char a;
    char b[200];
    b[0] = '\0';
    while (1 < 2)
    {
        printf("MENU\n");
        printf("1: Add a new character\n");
        printf("2: Delete the last character\n");
        printf("3: Print the string\n");
        printf("0: Stop\n");
        printf("Your selection:\n");
        scanf(" %d", &choice);
        if (choice == 0)
        {
            printf("End of the program.");
            break;
        }
        switch (choice)
        {
        case 1:

            printf("Enter a character:\n");
            scanf(" %s", &a);
            b[length] = a;
            b[length + 1] = '\0';
            length++;
            break;

        case 2:
            if (b[0] == '\0')
            {
                printf("The string is empty.\n");
                break;
            }
            else
            {
                printf("The character %c has been removed.\n", b[length - 1]);
                b[length - 1] = '\0';
                length--;
                break;
            }
        case 3:
            if (b[0] == '\0')
            {
                printf("The string is empty.\n");
                break;
            }
            else
            {
                printf("%s\n", b);
                break;
            }
        default:
            printf("Unknown selection.\n");
        }
    }
}