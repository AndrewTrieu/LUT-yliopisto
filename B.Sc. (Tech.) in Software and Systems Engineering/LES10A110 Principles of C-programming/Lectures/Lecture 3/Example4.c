#include <stdio.h>
#include <stdlib.h>

int main(void)
{

    int i, nr;
    FILE *fptr;

    fptr = fopen("test.bin", "wb"); // w for read, b for binary

    // Write file
    for (i = 0; i < 10; i++)
        fwrite(&i, sizeof(int), 1, fptr);
    fclose(fptr);

    printf("File written!\n");

    // Read file
    fptr = fopen("test.bin", "rb"); // r for read, b for binary
    while (fread(&nr, sizeof(int), 1, fptr) != 0)
        printf("%d,", nr);

    printf("\n");
    fclose(fptr);
    return (0);
}