#include <stdio.h>

int main(int argc, char *argv[])
{
   int i;
   printf("You gave %d command line arguments:\n", argc);
   for (i = 0; i < argc; i++)
   {
      printf("Argument %d was %s\n", i, argv[i]);
   }
   return 0;
}