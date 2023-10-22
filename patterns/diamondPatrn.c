#include <stdio.h>

void main()
{
    int n, sp, st;
    printf("Enter a number: ");
    scanf("%d", &n);
    sp = n / 2;
    st = 1;
    for (int i = 1; i <= n; i++)
    {
        for (int j = 1; j <= sp; j++)
        {
            printf(" ");
        }
        for (int k = 1; k <= st; k++)
        {
            printf("*");
        }
        if (i < (n / 2) + 1)
        {
            sp--;
            st += 2;
        }
        else
        {
            sp++;
            st -= 2;
        }
        printf("\n");
    }
}