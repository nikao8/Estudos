#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include <conio.h>

int main(void)
{

    int i, quantidadeDados, lados;
    
    printf("Digite o numero de dados: \n");
    scanf("%i", &quantidadeDados);
    printf("Quantos lados voce quer? \n");
    scanf("%i ", &lados);

    srand(time(NULL));

    for (i = 0; i < quantidadeDados; i++)
    {
        printf("Dado #%i: ", (i + 1));
        printf("%i\n", rand() % (lados + 1));
    }
    getch();
    return 0;
}