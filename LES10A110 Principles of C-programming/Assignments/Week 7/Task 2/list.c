#include <stdio.h>
#include <stdlib.h>
struct Node
{
    int data;
    struct Node *next;
};
typedef struct Node node;
node *createList()
{
    node *head = malloc(sizeof(node));
    head->next = NULL;
    return head;
}
void *addNode(node *prev, int x)
{
    node *new = malloc(sizeof(node));
    new->data = x;
    new->next = prev->next;
    prev->next = new;
    return new;
}
void addItem(node *head, int index, int x)
{

    if (index < 1)
    {
        printf("Invalid position\n");
    }
    else
    {
        node *temp = head;
        for (int i = 0; i < index - 1; i++)
        {
            if (temp->next == NULL)
                break;
            temp = temp->next;
        }
        addNode(temp, x);
    }
}
void removeItem(node *head, int index)
{
    if (head->next == NULL)
    {
        printf("Can't remove item from empty list!!\n");
    }
    else if (index <= 0)
        printf("Invalid position\n");
    else
    {
        node *temp = head;
        for (int i = 0; i < index - 1; i++)
        {
            if (temp->next == NULL)
                break;
            temp = temp->next;
        }
        node *remove = temp->next;
        temp->next = remove->next;
        free(remove);
    }
}
void printList(node *head)
{
    if (head == NULL)
    {
        printf("The list is empty.\n");
    }
    else
    {
        printf("Items in the list are: ");
        for (node *itr = head->next; itr != NULL; itr = itr->next)
            printf("%d ", itr->data);
        printf("\n");
        return;
    }
}
