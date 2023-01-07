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
    node *new = (node*) malloc(sizeof(node));
    new->data = x;
    new->next = NULL;
    if (p_first == NULL) { // list was  empty
        // Note: we need to fix first in main!
        p_last = new;
    } else {
        p_last->next = new; // add new to the end
        p_last = new;
    }
    return(p_last);
}

void print(node *p_first) {
    for (node *itr = p_first; itr != NULL; itr = itr->next)
        printf("%d \n", itr->data);
    return;
}

node *clear(node *p_first)
{
    node *itr = p_first;
    while (itr != NULL) {
        p_first = itr->next;
        free(itr);
        itr = p_first;
        }
    return(p_first); 
}

int main()
{   
    node *first = NULL;
    node *last = NULL;

    node *itr;
    
    int n,y;

    printf("Enter number of elements: ");
    scanf("%d", &n);
 
    printf("Enter elements: ");
    for(int i = 0; i < n; ++i) {
        scanf("%d", &y);
        last = addNode(first, last, y);
        if (first == NULL)  // otherwise we do not have pointer to the first!
            first = last;
    }

    // printing 
    printf("Printing...\n");
    print(first);
        

    // freeing the memory
    printf("Clearing...\n");
    last = clear(first);
    first = last;
    printf("%p - %p \n", first, last);

    return 0;
}