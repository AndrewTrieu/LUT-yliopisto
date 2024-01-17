#include <stdio.h>
int main() {
  int mark[5] = {19, 10, 8, 17, 9};
  char word[10] = {'c','o','d','e','\0'}; 
  int i;

  // print the first element of the array
  printf("%d\n", mark[0]);
  
  // print the third element of the character array
  printf("%c\n", word[2]);

  // print ith element of the array
  i = 5;
  printf("%d\n", mark[i-1]);

  // print an element outside of the array
  printf("%d\n", mark[5]);
  /* There are no ending character 
  in arrays of numbers */

  // print the string
  printf("%s\n", word);

  return 0;
}
