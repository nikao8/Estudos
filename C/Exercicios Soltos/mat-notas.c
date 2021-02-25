#include <stdio.h>
#include <stdlib.h>

int main()
{
    float mat[4][3], soma_notas=0;
    int i,j;

    for (i = 0; i < 4; i++)
    {
        for(j = 0; j < 3; j++)
        {
        printf ("Aluno %i digite sua nota %i: ", i+1, j+1);
        scanf ("%f", &mat[i][j]);               
        
        soma_notas += mat[i][j];
        }    
    
    
        printf ("\nNota final do aluno %i: %.2f\n", i+1, soma_notas);
        printf ("\n-----------------------------\n");
    
    }
    
    /*for (i = 0; i < 4; i++)
    {
        for (j = 0; j < 3; j++)
        {
            soma_notas += mat[i][j];
        }


    
    }
   */
   
    return 0;
}