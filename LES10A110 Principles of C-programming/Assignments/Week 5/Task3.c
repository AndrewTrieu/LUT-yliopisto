#include <stdio.h>
#include <string.h>
struct Person
{
    char firstname[30];
    int age;
};
struct Person personCopy(struct Person original)
{
    struct Person third = original;
    printf("Third person has been created.\nCopied Info of the first person to third.\n");
    return third;
}
void pointerCheck(struct Person first, struct Person third)
{
    printf("Comparing the first person and the third person addresses:\n");
    if (&first != &third)
    {
        printf("The addresses of the records are not the same.\n");
    }
}
int main(void)
{

    typedef struct Person PERSON;
    PERSON first;
    PERSON second;
    printf("Enter first name of the first person:\n");
    scanf(" %s", &first.firstname);
    printf("Enter age of first person:\n");
    scanf(" %d", &first.age);
    printf("Enter first name of the seocnd person:\n");
    scanf(" %s", &second.firstname);
    printf("Enter age of the second person:\n");
    scanf(" %d", &second.age);
    printf("Comparing two persons:\n");
    printf("person 1 info: %s, %d\n", first.firstname, first.age);
    printf("person 2 info: %s, %d\n", second.firstname, second.age);
    if (first.age != second.age || first.firstname != second.firstname)
    {
        printf("The data in the records are not the same.\n");
        PERSON third = personCopy(first);
        printf("Comparing the first person and the third person:\n");
        printf("person 1 info: %s, %d\n", first.firstname, first.age);
        printf("person 2 info: %s, %d\n", third.firstname, third.age);
        if (first.age == third.age || first.firstname == third.firstname)
        {
            printf("The data in the records are the same.\n");
            pointerCheck(first, third);
        }
    }
}
