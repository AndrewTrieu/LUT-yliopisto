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
    node *new = (node *)malloc(sizeof(node));
    new->data = x;
    new->next = NULL;
    if (p_first == NULL)
    {
        p_last = new;
    }
    else
    {
        p_last->next = new;
        p_last = new;
    }
    return (p_last);
}
void deleteElement(struct Node **head_ref, int key)
{
    struct Node *temp = *head_ref, *prev;

    if (temp != NULL && temp->data == key)
    {
        *head_ref = temp->next;
        free(temp);
        return;
    }
    while (temp != NULL && temp->data != key)
    {
        prev = temp;
        temp = temp->next;
    }

    // If the key is not present
    if (temp == NULL)
    {
        printf("Item not found.\n");
        return;
    }

    // Remove the node
    prev->next = temp->next;

    free(temp);
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
    int i, val;
    while (1)
    {
        printf("1)Add item to end of list\n2)Clear list\n3)Remove item from list\n4)Print list\n0)Exit\n");
        scanf(" %d", &i);
        switch (i)
        {
        case 1:
            printf("Enter the data:\n");
            scanf(" %d", &val);
            last = addNode(first, last, val);
            if (first == NULL)
                first = last;
            break;
        case 2:
            last = clear(first);
            first = last;
            break;
        case 3:
            printf("Enter the element you want to remove:\n");
            scanf(" %d", &val);
            deleteElement(&first, val);
            break;
        case 4:
            print(first);
            break;
        case 0:
            return 0;
        default:
            printf("Unknown selection, please try again.\n");
            break;
        }
    }
}
