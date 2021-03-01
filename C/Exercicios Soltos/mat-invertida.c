#include <stdio.h>
#include <stdlib.h>

int main()
{
    int i=0, j=0, mat[5][5];
    int troca1, aux;
    //int diag[5], diag2[5];

    printf ("Popule a matriz 5x5 a seguir:\n\n");

    for (i = 0; i < 5; i++)
    {
        for (j = 0; j < 5; j++)
        {
            printf ("--> ");
            scanf ("%i", &mat[i][j]);
        }
    }
    system ("cls || clear");
    printf ("\n------------------------------------------------\n\nEssa eh a matriz que voce populou:\n\n");

    for (i = 0; i < 5; i++)
    {
        for (j = 0; j < 5; j++)
        {
            printf ("%i\t", mat[i][j]);
        }
        printf("\n");
    }
    
    printf ("\n------------------------------------------------\n\nEssa eh a matriz com a segunda linha trocada pela quinta linha:\n\n");
    // trocando as linhas 2 por 5 e 5 por 2
    for (j = 0; j < 5; j++)
    {       
        troca1 = mat[1][j];
        mat[1][j] = mat[4][j];
        mat[4][j] = troca1;
    }
    // printando matriz trocada
    for (i = 0; i < 5; i++)
    {
        for (j = 0; j < 5; j++)
        {
            printf ("%i\t", mat[i][j]);
        }
        printf ("\n");
    }

    printf ("\n------------------------------------------------\n\nEssa eh a matriz com a terceira coluna trocada pela quinta coluna:\n\n");
    // trocando colunas 3 por 5 e 5 por 3
    for (i = 0; i < 5; i++)
    {
        troca1 = mat[i][2];
        mat[i][2] = mat[i][4];
        mat[i][4] = troca1;
    }
    // printando troca de colunas
    for (i = 0; i < 5; i++)
    {
        for (j = 0; j < 5; j++)
        {
            printf ("%i\t", mat[i][j]);
        }
        printf("\n");
    }

    printf ("\n------------------------------------------------\n\nEssa eh a matriz com a diagonal principal trocada pela diagonal secundaria:\n\n");
    // trocando diagonais
    // recebendo as diagonais
    
    /* //----------------------------------- METODO COM ERRO !!!! ----------------------------------------------
    for (i = 0; i < 5 ; i++)
    {
        diag[i] = mat[i][i];
        
        for (j = 5; j > 0; j--)
        {
            if (i + j == 4)
            {
                diag2[i] = mat[i][j];          
            }
        }
    }
    // aplicando na matriz
    
    for (i = 0; i < 5; i++)
    {       
        for (j = 0; j < 5; j++)
        {
            if (i == j)
            {                
                mat[i][j] = diag2[i];
            }  

            if (i + j == 4)
            {
                mat[i][j] = diag[i];
            }      
        }
    }
    //-----------------------------------------------------------------------------------------------------------
    */
    
    for (i = 0; i < 5; i++)
    {
        aux = mat[i][i];
        mat[i][i] = mat[i][4-i];
        mat[i][4-i] = aux;
    }

    for (i = 0; i < 5; i++)
    {
        for (j = 0; j < 5; j++)
        {           
            printf ("%i\t", mat[i][j]);
        }
        printf("\n");
    }  

    return 0;
}