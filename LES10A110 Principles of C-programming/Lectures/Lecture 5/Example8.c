#include <stdio.h>
#include <string.h>
#include <stdlib.h>

 
typedef struct driver {
    char name[10];
    int age;
} DRIVER;
 
int main(void){
    DRIVER *pDriver;
    if ((pDriver = (DRIVER*)malloc(sizeof(DRIVER)))==NULL){
        printf("Memory allocation failed");
        exit(0);
        }

    strcpy(pDriver->name, "Kimi");
    pDriver->age = 42;

    printf("The age of %s is %d\n", pDriver->name, pDriver->age);


    return 0;
}
 
 