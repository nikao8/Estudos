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
4. Uma empresa de fornecimento de energia elétrica faz a leitura mensal dos medidores de consumo.
Para cada consumidor, são digitados os seguintes dados:

• número do consumidor

• quantidade de kWh consumidos durante o mês

• tipo (código) do consumidor

1-residencial, preço em reais por kWh = 0,3

2-comercial, preço em reais por kWh = 0,5

3-industrial, preço em reais por kWh = 0,7

Os dados devem ser lidos até que seja encontrado o consumidor com número 0 (zero). O

programa deve calcular e imprimir:

• O custo total para cada consumidor

• O total de consumo para os três tipos de consumidor

• Amédia de consumo dos tipos 1 e 2
```C
#include <stdio.h>
#include <stdlib.h>

int main()
{
    int consumidor, tipoConsumidor;
    float qtdKwh, custoTot=0, med12=0, total=0;

    do
    {
        printf ("\nInsira seu numero de consumidor: ");
        scanf ("%i", &consumidor);

        if(consumidor == 0)
        {
            printf ("\n\nO total de consumo dos 3 tipos de consumidores foi de: %.2f", total);
            printf ("\nA media de consumo dos tipos 1 e 2 eh de: %.2f\n\n", med12 / 2);
            system ("pause");
            system ("exit");
        }
        else
        {   
            printf ("\nInsira a quantidade de kWh consumidos no mes: ");
            scanf ("%f", &qtdKwh);

            printf ("\nInsira o tipo do seu codigo consumidor %i:\n\n[1]Residencial\n[2]Comercial\n[3]Industrial\n\n--> ", consumidor);
            scanf ("%i", &tipoConsumidor);
             
            switch (tipoConsumidor)
            {            
                case 1:
                    custoTot += qtdKwh * 0.3;
                    total += qtdKwh;
                    med12 += qtdKwh;
                    printf ("\nO custo total do consumidor %i eh de: %.2f\n", consumidor, custoTot);
                break;

                case 2:
                    custoTot += qtdKwh * 0.5;
                    total += qtdKwh;
                    med12 += qtdKwh;
                 printf ("\nO custo total do consumidor %i eh de: %.2f\n", consumidor, custoTot);
                break;

                case 3:
                    custoTot += qtdKwh * 0.7;
                    total += qtdKwh;
                    printf ("\nO custo total do consumidor %i eh de: %.2f\n", consumidor, custoTot);
                break;

                default:
                    printf ("\nDigito invalido. Refaca a operacao....\n");
                    system ("pause");
                    return main();
                break;
            }
        }
    }while (consumidor != 0);

    return 0;
}
```
5. Faça um programa em C que permita entrar com o nome, a idade e o sexo de 20 pessoas. O
programa deve imprimir o nome da pessoa se ela for do sexo masculino e tiver mais de 21 anos.
```C
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int main()
{
    char nome[51];
    char sexo;
    int idade=0, x=0; 

    do
    {
        x++;

        printf ("\n------------------------------\nUsuario numero %i\n------------------------------\n\n", x);
        
        printf ("Insira seu nome: ");
        fgets (nome,51,stdin); // Leitura do array string utilizando fgets
        
        setbuf(stdin,NULL); // Limpando buffer do teclado para nao dar erro nas proximas leituras....

        printf ("Insira sua idade: ");
        scanf ("%i", &idade);

        setbuf(stdin,NULL);

        printf ("Insira seu sexo: [H] para homem | [M] para mulher\n--> ");
        scanf ("%c", &sexo);
         
        setbuf(stdin,NULL);
        
        if (idade > 21 && sexo == 'h' || sexo == 'H')
        {
            printf ("\nOla %s voce tem %i anos!.", nome, idade);
        }
   
    }while (x <= 20);
    
    return 0;
}
```
6. Faça um programa que permita entrar com o nome e o salário bruto de 10 pessoas. Após ler os
dados, imprimir o nome e o valor da alíquota do imposto de renda calculado conforme a tabela a
seguir:

Salário menor que R$1300 --> ISENTO

Salário maior ou igual a R$1300 e menor que 2300 --> 10% do salário bruto

Salário maior ou igual a R$2300 --> 15% do salário bruto
```C
#include <stdio.h>
#include <stdlib.h>

int main()
{
    char nome[51];
    float salario;
    int cont = 0;

    do
    {
        cont++;
        printf ("\n\n------------------------------\nUsuario %i\n------------------------------\n", cont);
        
        printf ("\nInsira seu nome: ");
        fgets (nome,51,stdin);

        setbuf(stdin,NULL);
        
        printf ("\nInsira seu salario bruto: ");
        scanf ("%f", &salario); 

        setbuf(stdin,NULL);

        if (salario < 1300)
        {
            printf ("\n%s,a sua aliquota de imposto esta na situacao de [ISENTO]", nome);
        }
        else if (salario >= 1300 && salario <2300)
        {
            printf ("\n%s,a sua aliquota de imposto eh de: %.2f",nome ,salario * 0.10);
        }
        else
        {
            printf ("\n%s,a sua aliquota de imposto eh de: %.2f",nome ,salario * 0.15);
        }

    }while (cont <= 10);

    return 0;
}
```
