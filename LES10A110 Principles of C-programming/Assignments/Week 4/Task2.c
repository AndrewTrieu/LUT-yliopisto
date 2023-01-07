#include <stdio.h>
#define rows 2
#define cols 2
printMatrix(int M[rows][cols], char title[])
{
    printf(title);
    printf("%4d %4d\n%4d %4d\n", M[0][0], M[0][1], M[1][0], M[1][1]);
}

int main(void)
{
    int matrix1[rows][cols], matrix2[rows][cols], summatrix[rows][cols];
    printf("Give Matrix 1 elements:\n");
    printf("Row 1 Col 1:\n");
    scanf(" %d", &matrix1[0][0]);
    printf("Row 1 Col 2:\n");
    scanf(" %d", &matrix1[0][1]);
    printf("Row 2 Col 1:\n");
    scanf(" %d", &matrix1[1][0]);
    printf("Row 2 Col 2:\n");
    scanf(" %d", &matrix1[1][1]);
    printMatrix(matrix1, "Matrix 1:\n");
    printf("Give Matrix 2 elements:\n");
    printf("Row 1 Col 1:\n");
    scanf(" %d", &matrix2[0][0]);
    printf("Row 1 Col 2:\n");
    scanf(" %d", &matrix2[0][1]);
    printf("Row 2 Col 1:\n");
    scanf(" %d", &matrix2[1][0]);
    printf("Row 2 Col 2:\n");
    scanf(" %d", &matrix2[1][1]);
    printMatrix(matrix2, "Matrix 2:\n");
    for (int i = 0; i < 2; i++)
    {
        for (int j = 0; j < 2; j++)
            summatrix[i][j] = matrix1[i][j] + matrix2[i][j];
    }
    printMatrix(summatrix, "Sum matrix:\n");
}
