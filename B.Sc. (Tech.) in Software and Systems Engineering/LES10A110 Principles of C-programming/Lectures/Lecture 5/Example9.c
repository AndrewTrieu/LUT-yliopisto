#include <stdio.h>
#include <stdlib.h>
#include <string.h>

typedef struct person {
char name[30];
int age;
} PERSON;


PERSON *queryData() {
    PERSON *pPerson;

    // Dynamic memory allocation
    if ((pPerson = (PERSON*)malloc(sizeof(PERSON))) == NULL ){
        printf("Memory allocation failed");
        exit(1);
        }
    // Asking the information
    printf("What is your name?\n");
    scanf("%s", pPerson->name);
    printf("What is you age?\n");
    scanf("%d", &pPerson->age);
    return pPerson; // return the address to the caller
}

int main(void) {
    PERSON *ptr;

    // collect the data 
    ptr = queryData();
    printf("Your name is '%s' and your age is %d.\n", ptr->name, ptr->age);
    free(ptr); // free the used memore in the end
    return(0);
    }
 