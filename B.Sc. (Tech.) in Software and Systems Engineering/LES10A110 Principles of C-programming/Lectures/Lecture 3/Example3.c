#include <stdio.h>
#include <stdlib.h>

int main(void) {

    char line[50];
    FILE *fptr;

    if ((fptr = fopen("noFile.txt", "r")) == NULL){  // File does not exist
        perror("Failed to open file, terminating");
        exit(0);
        }

    fclose(fptr);
    return(0);
}