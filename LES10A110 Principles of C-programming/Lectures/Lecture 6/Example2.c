#include <stdio.h>
#include <stdlib.h>

struct Node
{
    int data;
    struct Node *next;
};
typedef struct Node node;

int main()
{   /* creating an empty list
    by setting the pointers to NULL simply
    no new nodes are created at this part
    nodes are created when "needed" */

    node *first = NULL;
    node *last = NULL;

    node *itr;
    
    int n;

    printf("Enter number of elements: ");
    scanf("%d", &n);
 
    printf("Enter elements: ");
    for(int i = 0; i < n; ++i) {
        node *new = (node*) malloc(sizeof(node));
        new->next = NULL;
        scanf("%d", &new->data);
        if (first == NULL) { // list was  empty
            first = new;
            last = new;
        } else 
        last->next= new; // add new to the end
        last = new;
    }

    // printing 
    printf("The following numbers are listed:\n");
    for (itr = first; itr != NULL; itr = itr->next)
        printf("%d ", itr->data);
        
    printf("\n");

    // freeing the memory
    printf("Clearing...");
    itr = first;
    while (itr != NULL) {
        first = itr->next;
        free(itr);
        itr = first;
        }
    last = NULL; // just in case

    printf("%p - %p \n", first, last);

    return 0;
}