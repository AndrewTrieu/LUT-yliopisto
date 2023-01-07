#include <stdio.h>
#define ROWS 2
#define COLS 2
printMat(int M[ROWS][COLS], char name[])
{
    printf("%s\n%4d %4d\n%4d %4d\n", name, M[0][0], M[0][1], M[1][0], M[1][1]);
}

int main(void)
{
    int mat1[ROWS][COLS], mat2[ROWS][COLS], sum[ROWS][COLS];
    printf("Give Matrix 1 elements:\n");
    for (int i = 0; i < ROWS; i++)
    {
        for (int j = 0; j < COLS; j++)
        {
            printf("Row %d Col %d:\n", i + 1, j + 1);
            scanf(" %d", &mat1[i][j]);
        };
    };
    printMat(mat1, "Matrix 1:");
    printf("Give Matrix 2 elements:\n");
    for (int i = 0; i < ROWS; i++)
    {
        for (int j = 0; j < COLS; j++)
        {
            printf("Row %d Col %d:\n", i + 1, j + 1);
            scanf(" %d", &mat2[i][j]);
        };
    };
    printMat(mat2, "Matrix 2:");
    for (int i = 0; i < 2; i++)
    {
        for (int j = 0; j < 2; j++)
            sum[i][j] = mat1[i][j] + mat2[i][j];
    }
    printMat(sum, "Sum matrix:");
}
