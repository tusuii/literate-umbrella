#include <stdio.h>

int main()
{
    int a;
    printf("Enter a number: ");
    scanf("%d", &a);
    for (int i = 1; i <= a; i++)
    {
        for (int j = 1; j <= a; j++)
        {
            printf("  *");
        }
        printf("\n");
    }
}