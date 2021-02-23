#include <stdio.h>
#include <stdlib.h>

int main()
{
    
    float nota1[15], nota2[15], med[15];
    int i;
       
    for (i = 0; i < 15; i++)
    {
        printf ("Insira a nota da sua 1 prova: ");
        scanf ("%f", &nota1[i]);
    
        printf ("Insira a nota da sua 2 prova: ");
        scanf ("%f", &nota2[i]);

        med[i] = (nota1[i] + nota2[i]) / 2;
        printf ("\nA media do aluno %i eh: %.2f", i, med[i]);

        if (med[i] >= 6)
        {
            printf ("\n\nAluno [APROVADO].\n");
        }
        else
        {
            printf ("\n\nAluno [REPROVADO].\n");
        }    
    
        printf ("\n--------------------------------\n\n");
    }        
    
    return 0;
}