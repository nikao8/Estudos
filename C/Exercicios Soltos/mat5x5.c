#include <stdio.h>
#include <stdlib.h>

int main()
{

    int matriz[5][5], i = 0, j = 0;


    for (i = 0; i < 5; i++)
    {
        for(j = 0; j < 5; j++)
        {
            printf ("Insira o %i numero a popular a matriz: ", j+1);
            scanf ("%i", &matriz[i][j]);

        }
    }

    system ("cls || clear");

    for (i = 0; i < 5; i++)
    {
        for (j = 0; j < 5; j++){
            printf ("%i ", matriz[i][j]);
        }
        printf ("\n");
    }

    return 0;
}