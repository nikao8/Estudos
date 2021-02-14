#include <stdio.h>
#include <stdlib.h>


int main()
{
    int planeta;
    float peso;

    printf("\n Digite seu Peso aqui na terra: ");
    scanf("%f", &peso);
    printf("\nAtraves do numero escolha um astro para ver seu peso:\n");
    printf("\n1 - mercurio\n2 - venus\n3 - marte\n4 - jupiter\n5 - saturno\n6 - urano\n7 6 - netuno\n");
    scanf("%i", &planeta);
    switch (planeta)
    {
    case 1:
        printf("Seu peso em mercurio  = %f", peso * 0.376);
        break;
    case 2:
        printf("Seu peso em venus  = %f", peso * 0.903);
        break;
    case 3:
        printf("Seu peso em marte  = %f", peso * 0.380);
        break;
    case 4:
        printf("Seu peso em jupiter  = %f", peso * 2.340);
        break;
    case 5:
        printf("Seu peso em saturno  = %f", peso * 1.160);
        break;
    case 6:
        printf("Seu peso em urano  = %f", peso * 1.150);
        break;
    case 7:
        printf("Seu peso em netuno  = %f", peso * 1.190);
        break;

    default:
        printf("Escolha um numero entre 1 a 7 com os planetas respectivos");
        return main();
        break;
    }
    return 0;
}
