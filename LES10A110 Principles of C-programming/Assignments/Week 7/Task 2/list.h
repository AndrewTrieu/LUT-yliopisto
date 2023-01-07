struct Node
{
    int data;
    struct Node *next;
};
typedef struct Node node;
node *createList();
void addItem(node *head, int index, int x);
void removeItem(node *head, int index);
void printList(node *head);