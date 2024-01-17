#include <stdio.h>
int main() {
  int i,j;
  int matrix[3][4]; // 3 rows, 4 columns
  int *ptr;

  for(i=0; i<3; i++)
    for(j=0; j<4; j++)
      matrix[i][j] = i + j;

  // printing the elements
  for(i=0; i<3; i++)
    { for(j=0; j<4; j++)
        printf("%d ",matrix[i][j]);
      printf("\n");
    }

  // printing the addresses
 
  for(i=0; i<3; i++)
    { for(j=0; j<4; j++)
        printf("%p ",&matrix[i][j]);
      printf("\n");
    }  

  ptr = &matrix[0][0];

  for(i=0; i<=9; i++){
    printf("%d, ", *ptr);
    printf("%p \n", ptr);
    ptr++;
  }
  printf("\n");
}
