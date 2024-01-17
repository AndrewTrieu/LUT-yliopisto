#include <stdio.h>
#include <stdlib.h>

struct Node
{
    int data;
    struct Node *next;
};
typedef struct Node node;

int main()
{
    node *first = NULL;
    node *last = NULL;

    node *itr;

    int n;

    printf("Enter elements:\n");
    while (1)
    {
        printf("Enter an element(Enter 0 to exit):\n");
        scanf("%d", &n);
        if (n == 0)
        {
            printf("The following numbers are listed:\n");
            for (itr = first; itr != NULL; itr = itr->next)
                printf("%d ", itr->data);
            printf("\n");
            printf("Clearing...");
            itr = first;
            while (itr != NULL)
            {
                first = itr->next;
                free(itr);
                itr = first;
            }
            last = NULL;
            return 0;
        }
        node *new = (node *)malloc(sizeof(node));
        new->next = NULL;
        new->data = n;
        if (first == NULL)
        {
            first = new;
            last = new;
        }
        else
        {
            last->next = new;
            last = new;
        }
    }
}