#include <stdio.h>
#include <stdlib.h>

int main()
{

    int A[3][4], B[3][4], i = 0,j = 0;

    printf ("Insira os valores da matriz A:\n\n");

    for (i = 0; i < 3; i++)
    {
        for (j = 0; j < 4; j++)
        {
            printf ("--> ");
            scanf ("%i", &A[i][j]);
        }
    }

    system ("cls || clear");
    printf ("Matriz A:\n\n");

    for (i = 0; i < 3; i++)
    {
        for (j = 0; j < 4; j++)
        {            
            printf ("%i ", A[i][j]);
        }
        printf ("\n");
            
    }
   
    printf ("\nMatriz B: (Multiplicado por 3 da matriz A !)\n\n");

    for (i = 0; i < 3; i++)
    {
        for (j = 0; j < 4; j++)
        {
            B[i][j] = A[i][j] * 3;
            printf ("%i ", B[i][j]);
        }
        printf ("\n");
            
    }

    return 0;
}