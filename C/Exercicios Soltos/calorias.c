#include <stdio.h>
#include <stdlib.h>
#include <locale.h>

int main()
{
setlocale(LC_ALL, "Portugueses"); //para acrescentar acentos e tal
    int calTot, prato, sobremesa, bebida;
    system ("color 03");
    printf("\nBem vindo ao calculador de calorias da sua refeiçao ! ");

    printf("\nEscolha a seguir as comidas ingeridas conforme a tabela...\n");

    printf("\n\nPratos:\n\n1- Vegetariano\n2- Peixe\n3- Frango\n4- Carne\n");
    scanf("\n %i", &prato);
    calTot = 0;
    switch(prato)
    {
        case 1:
        calTot = calTot + 180;
        break;

        case 2:
        calTot = calTot + 230;
        break;

        case 3:
        calTot = calTot + 250;
        break;

        case 4:
        calTot = calTot + 350;
        break;

        default:
        return main();
        break;
    }
    system("cls");
    printf ("\n\nSobremesa:\n\n1- Abacaxi\n2- Sorvete diet\n3- Mousse Diet\n4-Mousse Chocolate\n");
    scanf("\n %i", &sobremesa);

        switch(sobremesa)
    {
        case 1:
        calTot = calTot + 75;
        break;

        case 2:
        calTot = calTot + 110;
        break;

        case 3:
        calTot = calTot + 170;
        break;

        case 4:
        calTot = calTot + 200;
        break;

        default:
        return main();
        break;
    }
    system("cls");
    printf("\n\nBebidas:\n\n1- Cha\n2- Suco de laranja\n3- Suco de melao\n4- Refrigerante Diet\n");
    scanf("\n %i", &bebida);

        switch(bebida)
    {
        case 1:
        calTot = calTot + 20;
        break;

        case 2:
        calTot = calTot + 70;
        break;

        case 3:
        calTot = calTot + 100;
        break;

        case 4:
        calTot = calTot + 65;
        break;

        default:
        return main();
        break;
    }
    system("cls");
    printf("\n\nA quantidade total de calorias ingeridas e de: %i \n", calTot);
return 0;
}