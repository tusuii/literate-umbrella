#include <stdio.h>

void main()
{
    int a, b = 0;
    printf("Enter rows: ");
    scanf("%d", &a);
    for (int i = 1; i <= a; i++)
    {
        for (int j = 1; j <= a; j++)
        {
            if (j == i || j == a - b)
                printf(" * ");
            else
                printf("   ");
        }
        b++;
        printf("\n");
    }
}