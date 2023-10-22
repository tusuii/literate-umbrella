#include <stdio.h>

int main()
{
    int rw, col;
    printf("Enter number of rows: ");
    scanf("%d", &rw);
    printf("\nEnter number of col: ");
    scanf("%d", &col);
    for (int i = 1; i <= rw; i++)
    {
        for (int j = 1; j <= col; j++)
        {
            if (i == 1 || i == rw || j == 1 || j == col)
                printf(" * ");
            else
                printf("   ");
        }
        printf("\n");
    }
    return 0;
}