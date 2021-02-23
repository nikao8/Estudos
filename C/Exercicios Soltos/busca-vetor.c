#include <stdio.h>
#include <stdlib.h>
#include <locale.h>

int main() {
    setlocale(LC_ALL, "Portuguese");
    int i = 0, finder;
    int vet[15];
    int result;
    for(i = 0; i < 15; i++){
        printf("Digite um numero a popular o vetor[%i]: \n", i);
        scanf("%i", &vet[i]);
    }
    system ("cls || clear");
    printf ("Digite um numero a ser buscado no vetor: ");
    scanf ("%i", &finder);

    for(i = 0; i < 15; i++){
        
        if (finder == vet[i])
        {            
            printf ("A posiçao do vetor que contenha o numero buscado eh vet[%i]", i);
        }
        else
        {
        system ("cls || clear");
        printf ("Numero nao encontrado no vetor!.");
        }
    }

    return 0;
}