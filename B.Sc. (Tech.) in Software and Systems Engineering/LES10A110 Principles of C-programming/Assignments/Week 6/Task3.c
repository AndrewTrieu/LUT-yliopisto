#include <stdio.h>
#include <stdlib.h>
struct Node
{
    int data;
    struct Node *next;
};
typedef struct Node node;
node *addNode(node *p_first, node *p_last, int x)
{
    for (int i = 0; i < x; i++)
    {
        node *new = (node *)malloc(sizeof(node));
        new->data = i;
        new->next = NULL;
        if (p_first == NULL)
        { // list was  empty
            // Note: we need to fix first in main!
            p_first = new;
            p_last = p_first;
        }
        else
        {
            p_last->next = new; // add new to the end
            p_last = new;
        }
    }
    return (p_first);
}

void print(node *p_first)
{
    if (p_first == NULL)
    {
        printf("The list is empty.\n");
    }
    else
    {
        printf("Items in the list are:");
        for (node *itr = p_first; itr != NULL; itr = itr->next)
            printf("%d ", itr->data);
        printf("\n");
        return;
    }
}

node *clear(node *p_first)
{
    node *itr = p_first;
    while (itr != NULL)
    {
        p_first = itr->next;
        free(itr);
        itr = p_first;
    }
    return (p_first);
}
int main(void)
{
    node *first = NULL;
    node *last = NULL;
    node *itr;
    int size = 0;
    int i;

    while (1)
    {
        printf("1) Print the items in the list\n2) Resize the list\n0) Stop\nSelect an Item:\n");
        scanf("%d", &i);
        switch (i)
        {
        case 1:
            print(first);
            break;
        case 2:
            last = clear(first);
            first = last;
            printf("Enter the size for the list:\n");
            scanf("%d", &size);
            if (size < 0)
            {
                printf("List size can't be negative.\n");
                return 0;
            }
            else if (size == 0)
            {
                break;
            }
            else
            {
                first = addNode(first, last, size);
                break;
            }
        case 0:
            return 0;
        default:
            printf("Unknown selection, please try again.\n");
            break;
        }
    }
}
