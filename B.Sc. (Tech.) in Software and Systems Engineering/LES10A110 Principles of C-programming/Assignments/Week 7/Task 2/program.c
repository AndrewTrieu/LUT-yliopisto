#include <stdio.h>
#include "list.h"
int main(void)
{
    node *head;
    head = createList();
    int item, index, i;
    while (1)
    {
        printf("1)Add item to the list\n2)Remove item from the list\n3)Print list\n0)Exit\n");
        scanf(" %d", &i);
        switch (i)
        {
        case 1:
            printf("Please enter index of the item:\n");
            scanf(" %d", &index);
            printf("Please enter the Number:\n");
            scanf(" %d", &item);
            addItem(head, index, item);
            break;
        case 2:
            printf("Please enter index of the item:\n");
            scanf(" %d", &index);
            removeItem(head, index);
            break;
        case 3:
            printList(head);
            break;
        case 0:
            return 0;
        default:
            printf("Unknown selection, please try again.\n");
            break;
        }
    }
}