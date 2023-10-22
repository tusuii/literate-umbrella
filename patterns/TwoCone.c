#include <stdio.h>

void main()
{
    int n, sp = 1;
    printf("Enter a number: ");
    scanf("%d", &n);
    for (int i = 1; i < n; i++)
    {
        if (i == 1)
        {
            for (int a = 1; a <= n * 2 - 1; a++)
            {
                printf("*");
            }
            printf("\n");
        }
        for (int j = 1; j <= n - i; j++)
        {
            printf("*");
        }
        for (int k = 1; k <= sp; k++)
        {
            printf(" ");
        }
        for (int l = 1; l <= n - i; l++)
        {
            printf("*");
        }
        sp += 2;
        printf("\n");
    }
}