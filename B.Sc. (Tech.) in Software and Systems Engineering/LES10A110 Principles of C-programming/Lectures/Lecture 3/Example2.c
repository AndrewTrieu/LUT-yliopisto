#include <stdio.h>
int main(void) {

    char line[50];
    FILE *fptr;

    fptr = fopen("text_file.txt", "r"); // Open an existing file
    printf("Here is the content of the file:\n");
    /* Print all rows of the file */
    while (fgets(line, 50, fptr) != NULL) {
    printf("%s", line);
    }
    fclose(fptr);
    return(0);
}