#include <stdio.h>
#define MAX_USER 10
struct User
{
    char username[49], password[49];
    int index;
};
int main(void)
{
    int i, num = 0;
    typedef struct User user;
    user list[MAX_USER];
    while (1)
    {
        printf("Select an option\n1) Add a new User\n2) Print the Users\n0) Stop\n");
        scanf(" %d", &i);
        switch (i)
        {
        case 1:
            list[num].index = num;
            printf("Enter your username:\n");
            scanf(" %s", &list[num].username);
            printf("Enter your password:\n");
            scanf(" %s", &list[num].password);
            num++;
            break;
        case 2:
            printf("Listed Users:\n");
            for (int x = 0; x < num; x++)
            {
                printf("Username '%s', password '%s', ID '%d'.\n", list[x].username, list[x].password, list[x].index);
            }
            break;
        case 0:
            return 0;
        default:
            printf("Unknown option.\n");
            break;
        }
    }
}
