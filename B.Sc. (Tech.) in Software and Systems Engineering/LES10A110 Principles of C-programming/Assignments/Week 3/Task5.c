#include <stdio.h>
#include <stdlib.h>

int main(void)
{
    int list[20];
    int i, nr;
    FILE *fptr;
    int seed;
    char buf[256];
    printf("Enter the name of a binary file (extension .bin):\n");
    scanf("%s", buf);
    printf("Enter the seed for random number generator:\n");
    scanf("%d", &seed);
    srand(seed);
    for (i = 0; i < 20; i++)
        list[i] = rand();
    fptr = fopen(buf, "wb");
    for (i = 0; i < 20; i++)
        fwrite(&(list[i]), sizeof(int), 1, fptr);
    fclose(fptr);
    printf("The file contains the following integers:\n");
    fptr = fopen(buf, "rb");
    while (fread(&nr, sizeof(int), 1, fptr) != 0)
        printf("%d ", nr);
    printf("\n");
    fclose(fptr);
    return (0);
}