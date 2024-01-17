#include <stdio.h>
#include <stdlib.h>
#define NR 3

typedef struct person {
    char name[30];
    int age;
} PERSON;

int main(void) {
    PERSON people[NR] = {{"Ville", 5},{"Kalle", 6},{"Erkki", 56}}; 
    FILE *file_out, *file_in;
    PERSON r_people[NR];  // we read the file to this vector

    printf("Let's write a file!\n"); 
    file_out = fopen("People.bin", "wb");
    fwrite(people, sizeof(people), 1, file_out); 
    fclose(file_out);
    
    printf("Let's try to read it!\n"); 
    file_in = fopen("People.bin", "rb"); 
    fread(r_people, sizeof(r_people), 1, file_in);
    printf("Done!\n\n"); 

    printf("Finally, let's print out the people:\n");
    for(int i = 0; i < NR; i++)
        printf("The age of %s is %d\n", r_people[i].name, r_people[i].age);

    return(0);
}
    