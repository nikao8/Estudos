#include <stdio.h>
#include <stdlib.h>

int main() 
{

    int i = 0, finder, x=0;
    int vet[15];
    
    for(i = 0; i < 15; i++)
    {
        printf("Digite um numero a popular o vetor[%i]: \n", i);
        scanf("%i", &vet[i]);
    }
    
    system ("cls || clear");
    printf ("Digite um numero a ser buscado no vetor: ");
    scanf ("%i", &finder);

    for(i = 0; i < 15; i++)
    {       
        if (vet[i] == finder)
        {            
            printf ("\nA posicao do vetor que contenha o numero buscado eh vet[%i]", i);
            x = 1;        
        }

    }
    
    if (x == 0)
    {
        printf("\nNumero nao encontrado!");
    }

    return 0;
}
