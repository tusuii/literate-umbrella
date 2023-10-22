#include <stdio.h>

int main()
{
    int a, b;
    printf("Enter rows: ");
    scanf("%d", &a);
    printf("\nEnter columns: ");
    scanf("%d", &b);
    for (int i = 1; i <= a; i++)
    {
        for (int j = 1; j <= b; j++)
        {
            if (a % 2 == 0 || b % 2 == 0)
                if (i == a / 2 || j == a / 2)
                    printf(" * ");
                else
                    printf("   ");
            else if (i == (a / 2) + 1 || j == (b / 2) + 1)
                printf(" * ");
            else
                printf("   ");
        }
    }
    printf("\n");
}