#include <stdio.h>

int main(void) {
    char line[50];

    FILE *fptr;
    
    fptr = fopen("text_file.txt", "w");
    printf("Type some text to write to a file (max 48 characters):\n");
    fgets(line, 50, stdin);  // note that "line" contains '\n'
    /* The fgets() function in C reads up to n characters from the stream 
    From file stream or standard input stream to a string str.*/
    fprintf(fptr, "%s", line); 

    printf("Type more text to write to a file (max 48 characters):\n");
    fgets(line, 50, stdin);  
    fprintf(fptr, "%s", line);

    fclose(fptr);
    return 0;
}