#include <stdio.h>
#include <string.h>
 
struct Book {
   char  title[50];
   char  author[50];
   char   publisher[100];
   int   year;
};

typedef struct Book BOOK;

int main( ) {

   BOOK Book1;        /* Declare Book1 of type BOOK */
  
   /* book 1 specification */
   strcpy( Book1.title, "The C Programming Language");
   strcpy( Book1.author, "Brian Kernighan"); 
   strcpy( Book1.publisher, "Prentice Hall");
   Book1.year = 1978;

   // Also Book2 is of type BOOK
   BOOK Book2 = {"Python Crash Course", "Eric Matthes", "No Starch Press", 2015};

   // /* book 2 specification */
   // strcpy( Book2.title, "Python Crash Course");
   // strcpy( Book2.author, "Eric Matthes");
   // strcpy( Book2.publisher, "No Starch Press");
   // Book2.year = 2015;

   /* print Book1 info */
   printf( "Book 1 title: %s\n", Book1.title);
   printf( "Book 1 author: %s\n", Book1.author);
   printf( "Book 1 publisher: %s\n", Book1.publisher);
   printf( "Book 1 year: %d\n", Book1.year);

   printf("\n"); // empty line 

   /* print Book2 info */
   printf( "Book 2 title: %s\n", Book2.title);
   printf( "Book 2 author: %s\n", Book2.author);
   printf( "Book 2 publisher: %s\n", Book2.publisher);
   printf( "Book 2 year: %d\n", Book2.year);

   return 0;
}