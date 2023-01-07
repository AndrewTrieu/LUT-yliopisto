#include <stdio.h>
#include <string.h>
 
struct Book {
   char  title[50];
   char  author[50];
   char   publisher[100];
   int   year;
};
 
int main( ) {

   struct Book Book1;        /* Declare Book1 of type Book */

 
   // book 1 specification 
   strcpy( Book1.title, "The C Programming Language");
   strcpy( Book1.author, "Brian Kernighan"); 
   strcpy( Book1.publisher, "Prentice Hall");
   Book1.year = 1978;

   // book 2 specification 
   struct Book Book2 = {"Python Crash Course", "Eric Matthes", "No Starch Press", 2015};

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