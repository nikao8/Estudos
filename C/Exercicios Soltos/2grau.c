#include <stdio.h>
#include <stdlib.h>
#include <math.h>

int main()
{
    int A = 0, B = 0, C = 0, d = 0;
    float x1 = 0, x2 = 0;
    char erro = ("\n operaçao invalida!");

    printf("\n Digite a seguir os coeficiente a serem calculados:");
    printf("\n 1o: ");
    scanf("%i", &A);
    printf("\n 2o: ");
    scanf("%i", &B);
    printf("\n 3o: ");
    scanf("%i", &C);

    printf("Sua equacao: %ix^2 + %ix + %i = 0\n", A, B, C);

    d = pow(B, 2) - 4 * A * C;
    printf("\ndelta: %i\n", d);
    if (d == 0)

    {
        printf(erro);
    }
    else
    {
        x1 = (-B + sqrt(d)) / (2 * A);
        
        x2 = (-B - sqrt(d)) / (2 * A);
    }

    printf("\n X1 = %f", x1);
    
    printf("\n X2 = %f", x2);
    
    return 0;
}