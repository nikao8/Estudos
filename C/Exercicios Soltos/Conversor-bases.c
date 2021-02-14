#include <stdio.h>
#include <stdlib.h>
//Conversor de bases.. by niclas
int main()
{

    int decimal, menu;

    printf("\nEscolha uma opcao no menu abaixo: \n");
    printf("\n[1] Conversor de decimal para hexadecimal\n");
    printf("[2] Conversor de hexadecimal para decimal\n");
    printf("[3] Conversor de decimal para octal\n");
    printf("[4] Conversor de octal para decimal\n");
    printf("[5] Encerra o programa\n");
    scanf("%i", &menu);
    system("cls || clear");

    switch (menu)
    {
    case 1:

        printf("Digite um numero a ser convertido de decimal para hexadecimal: \n");
        scanf("%i", &decimal);
        printf("\nSeu numero em hexadecimal: %x\n", decimal);
        return main();

        break;

    case 2:

        printf("Digite um numero a ser convertido de hexadecimal para decimal: \n");
        scanf("%x", &decimal);
        printf("\nSeu numero em decimal: %i\n", decimal);
        return main();
        break;

    case 3:

        printf("Digite um numero a ser convertido de decimal para octal: \n");
        scanf("%i", &decimal);
        printf("\nSeu numero em octal: %o\n", decimal);
        return main();
        break;

    case 4:

        printf("Digite um numero a ser convertido de octal para decimal: \n");
        scanf("%o", &decimal);
        printf("\nSeu numero em decimal: %i\n", decimal);
        return main();
        break;

    case 5:

        printf("Programa encerrando...");
        system("exit");

        break;

    default:
        break;
    }

    return 0;
}