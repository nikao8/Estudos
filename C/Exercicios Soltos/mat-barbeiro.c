#include <stdio.h>
#include <stdlib.h>

int main ()
{
    int i = 0, j = 0;
    float total = 0,  mat[5][3];

    for (i = 0; i < 5; i++)
    {
        for (j = 0; j < 3; j++)
        {
            printf ("\nOla barbeiro [%i] insira o total de servicos prestados: [1]Barba | [2]Cabelo | [3]Combo:\n\n%i --> ",i+1 ,j+1);
            scanf ("%f", &mat[i][j]);        
        }
    }
    
    system ("cls || clear");
    
    for (i = 0; i < 5; i++)
    {
        for (j = 0; j < 3; j++)
        {
            total = ((mat[i][0] * 20) + (mat[i][1] * 30) + (mat[i][2] * 45)) * 0.50;           
        }
        
        printf ("Ganhos do barbeiro [%i]: %2.f\n", i+1, total);
        printf("\n------------------------------------\n");
    }
    
    return 0;
}