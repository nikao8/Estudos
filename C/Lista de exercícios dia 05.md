1. Sabendo-se que a unidade lógica e aritmética calcula o produto através de somas sucessivas, crie
um programa que calcule o produto de dois números inteiros lidos. Suponha que os números lidos
sejam positivos e que o multiplicando seja menor do que o multiplicador.

```C
#include <stdio.h>
#include <stdlib.h> 

int main()
{
    int n1, n2;

    printf ("Insira o numero 1 (multiplicando): ");
    scanf ("%i", &n1);

    printf ("Insira o numero 2 (multiplicador): ");
    scanf ("%i", &n2);

    printf ("\n-----------------------------------------\n\n");

    if (n1 < n2 && n1 > 0 && n2 > 0)
    {
        printf ("Resultado: %i", n1 * n2);
    }
    else
    {
        printf ("Numeros invalidos refaca a operacao !\n");
        system ("pause");
        return main();
    }

    return 0;
}
```
2. Escreva um programa em C que possa ler um conjunto de pedidos de compra e calcule o valor total
da compra. Cada pedido é composto pelos seguintes campos:
• número de pedido
• data do pedido (dia, mês, ano)
• preço unitário
• quantidade
O programa deverá processar novos pedidos até que o usuário digite 0 (zero) como número do
pedido.
```C
#include <stdio.h>
#include <stdlib.h>

int main()
{
    float preco, tot;
    int quantidade, i=0, dia,mes,ano;

    do
    {
        i++;
        printf ("\n\n--------------------------\nPedido #%i:\n--------------------------\n\n", i);

        printf ("Insira a data do pedido (Dia Mes Ano):\n");
        scanf ("%i %i %i", &dia, &mes, &ano);

        if (dia > 31 || mes > 12)
        {
            printf ("\nData invalida! refaca a operacao.... \n");
            system ("pause");
            return main();
        } 
       
        printf ("\nInsira o preco unitario da compra: ");
        scanf ("%f", &preco);

        printf ("\nInsira a quantidade de produtos: ");
        scanf ("%i", &quantidade);

        tot += preco * quantidade;

        printf ("\nPreco total do pedido #%i = %.2f", i, tot);

    }while (preco !=0);

    return 0;
}
```
3. Uma pesquisa de opinião realizada no Rio de Janeiro, teve as seguintes perguntas:
• Qual o seu time de coração?

1-Fluminense

2-Botafogo

3-Vasco

4-Flamengo

5-Outros

• Onde você mora?

1-RJ;

2-Niterói;

3-Outros

• Qual o seu salário?

Faça um programa que imprima:

• o número de torcedores por clube;

• a média salarial dos torcedores do Botafogo;

• o número de pessoas moradoras do Rio de Janeiro, torcedores de outros clubes;

• o número de pessoas de Niterói torcedoras do Fluminense

Obs.: O programa encerra quando se digita 0 para o time.
```C
#include <stdio.h>
#include <stdlib.h>

int main()
{
    int time, local=0, contFlu=0, contFla=0, contBot=0, contVas=0, contOut=0, rioOut=0, nitFlu=0;
    float salario=0, medSal=0, totBot=0;

    do
    {
        printf ("\nInsira seu salario: ");
        scanf ("%f", &salario);
        
        printf ("\nInsira a seguir aonde voce mora atualmente:\n\n[1] Rio de Janeiro\n[2] Niteroi\n[3] Outros\n\n--> ");
        scanf ("%i", &local);
       
        printf ("\nQual seu time de coracao ?\n\n[1] Fluminense\n[2] Botafogo\n[3] Vasco\n[4] Flamengo\n[5] Outro\n\n--> ");
        scanf ("%i", &time);

        switch (time)
        {
            case 0:
            break;

            case 1:
                contFlu++;
            break;

            case 2:
                contBot++;
                totBot += salario;
            break;

            case 3:
                contVas++;
            break;

            case 4:
                contFla++;
            break;

            case 5:
                contOut++;
            break;

            default:
                return main();
            break;
        }
        
        if (local == 1 && time == 5)
        {
            rioOut++;
        }
        else if (local == 2 && time == 1)
        {
            nitFlu++;
        }
  
    }while (time != 0);
    
    system ("cls || clear");
    printf ("O Fluminense tem %i torcedores.\nO Botafogo tem %i torcedores.\nO Vasco tem %i torcedores.\nO Flamengo tem %i torcedores.\nOs outros times tem %i torcedores.\n\n", contFlu, contBot, contVas, contFla, contOut);

    printf ("A media do salario dos torcedores do botafogo eh de: %.2f", totBot / contBot);
    printf("\nO total de torcedores do RJ que torcem para outros clubes: %i", rioOut);
    printf ("\nO total de torcedores de Niteroi que torcem para o Fluminense: %i", nitFlu);

    return 0;
}
```
