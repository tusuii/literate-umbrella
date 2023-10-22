#include <stdio.h>

void main()
{
    int n, k;
    printf("Enter a vlaue: ");
    scanf("%d", &n);
    for (int i = 1; i <= n; i++)
    {
        for (int l = 1; l <= n - i; l++)
        {
            printf(" ");
        }
        for (int j = 1; j <= i; j++)
        {
            k = 64 + j;
            printf("%c ", k);
        }
        printf(" \n");
        if (k >= 90)
            break;
    }
}