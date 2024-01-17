#include <stdio.h>
#include <stdlib.h>
struct Car
{
    char brand[50];
    int year;
};
typedef struct Car car;
struct Node
{
    car data;
    struct Node *next;
};
typedef struct Node node;

node *addNode(node *p_last, car data)
{
    node *new = (node *)malloc(sizeof(node));
    new->data = data;
    new->next = NULL;
    if (p_last == NULL)
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

void print(node *p_first)
{
    for (node *itr = p_first; itr != NULL; itr = itr->next)
        printf("%s %d\n", itr->data.brand, itr->data.year);
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

int main(int argc, char *argv[])
{
    node *head = NULL;
    node *tail = NULL;
    node *itr;
    FILE *ptr;
    car Car;
    ptr = fopen(argv[1], "r");

    while (fscanf(ptr, "%s %d", Car.brand, &Car.year) != EOF)
    {
        tail = addNode(tail, Car);
        if (head == NULL)
            head = tail;
    }
    printf("Items in the list are:\n");
    print(head);

    printf("Clearing...\n");
    tail = clear(head);
    head = tail;

    return 0;
}