#include <stdio.h>
#include <string.h>

struct Book
{
    char title[50];
    int year;
    int shelf;
};
int main(void)
{
    struct Book book;
    printf("Enter the title of the book:\n");
    fgets(book.title, 50, stdin);
    book.title[strcspn(book.title, "\n")] = 0;
    printf("Enter the year of publication of the book:\n");
    scanf(" %d", &book.year);
    printf("Please enter a shelf for the book:\n");
    scanf(" %d", &book.shelf);
    printf("The title of the book is '%s\', published in %d and shelf %d.\n", book.title, book.year, book.shelf);
}