#include <stdio.h>
int main()
{
    char fname[20], lname[20];
    int age;
    float weight;
    /*printf("Enter your first name:\n");*/
    scanf("%s", &fname);
    /*printf("Enter your last name:\n");*/
    scanf("%s", &lname);
    /*printf("Enter your age:\n");*/
    scanf("%d", &age);
    /*printf("Enter your weight:\n");*/
    scanf("%f", &weight);
    printf("Your name is %s %s, your age is %d years, and you weight %0.1f kg.\n", fname, lname, age, weight);
}