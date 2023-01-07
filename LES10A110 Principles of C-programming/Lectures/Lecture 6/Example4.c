#include <stdio.h>
#include <stdlib.h>

struct Node
{
    int data;
    struct Node *next;
};
typedef struct Node node;

node *addNode(node *p_last, int x)
{
    node *new = (node *)malloc(sizeof(node));
    new->data = x;
    new->next = NULL;
    p_last->next = new; // add new to the end
    p_last = new;
    return (p_last);
}

void print(node *p_first)
{
    for (node *itr = p_first; itr != NULL; itr = itr->next)
        printf("%d \n", itr->data);
    return;
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

int main()
{
    /* create a header element in the beginning
    in this way list is never empty => makes things easier */

    node *head = malloc(sizeof(node));
    head->next = NULL;
    node *last = head; // list is empty if head = last

    int n, y;

    printf("Enter number of elements: ");
    scanf("%d", &n);

    printf("Enter elements: ");
    for (int i = 0; i < n; ++i)
    {
        scanf("%d", &y);
        last = addNode(last, y);
    }

    // printing
    printf("printing...\n");
    print(head->next);

    // freeing the memory
    printf("Clearing...\n");
    last = clear(head);

    return 0;
}