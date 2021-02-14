#include <stdio.h>
#include <stdlib.h>

int main()
{

    int i=0,  n;
    float med;
    
    printf("escolha o tamanho do vetor:");
    scanf("%i", &n);

    int vet[n];

    for (i=0 ; i < n; i++)
    {
        printf("insira o %i numero:", i + 1);
        scanf("%i", &vet[i]);
        med = med + vet[i];
    }

    printf ("\nmedia: %.2f",med/5);

return 0;    
}