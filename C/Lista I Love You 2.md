1 - faça um alg. que leia 3 números e para cada um deles imprimir o seu dobro. somente será valido se realizado através de uma função e o resultado impresso no fim do alg.
```C
#include <stdio.h>
#include <stdlib.h>

int dobro(int x)
{
    int result;
    result = x * 2;
    
    return result;
}

void main()
{
    int n1, n2, n3;
    printf("Digite o primeiro numero: ");
    
    scanf("%i", &n1);
    printf("Digite o segundo numero: ");
    
    scanf("%i", &n2);
    printf("Digite o terceiro numero: ");
    
    scanf("%i", &n3);
    
    printf("\nO dobro do primeiro numero e: %i", dobro(n1));
    printf("\nO dobro do segundo numero e: %i", dobro(n2));
    printf("\nO dobro do terceri numero e: %i", dobro(n3));
}
```
2 - Faça um programa que receba as notas de três provas e calcule a média. Para o cálculo, escreva uma função. O programa deve imprimir a média ao final.
```C
#include <stdio.h>
#include <stdlib.h>

int mednota(int n1,int n2,int n3)
{
    float med;
    med = (n1 + n2 + n3)/3;
    return med;
}

void main()
{
    int n1,n2,n3;
    
    printf ("insira suas 3 notas em seguida: \n");
    scanf ("%i", &n1);
    scanf ("%i", &n2);
    scanf ("%i", &n3);

    printf ("A media eh: %i" ,mednota(n1,n2,n3));
}
```
3 - Faça um programa que leia o saldo e o % de reajuste de uma aplicação financeira e imprimir o novo saldo após o reajuste. O cálculo deve ser feito por uma função.
```C
#include <stdio.h>
#include <stdlib.h>

float reajuste_saldo(float x, float y)
{
    float res;
    res = x + (x * (y/100));
    return res;
}
void main()
{
    float n1, n2;
    
    printf("Insira seu saldo: ");
    scanf("%f", &n1);
    
    printf("Insira o reajuste (porcentagem): ");
    scanf("%f", &n2);

    printf("\nSeu novo saldo: %.2f", reajuste_saldo(n1, n2));
}
```
4 - Na pandemia a economia esta baixa..., os comerciantes estão procurando aumentar suas vendas oferecendo desconto. Faça um programa que permita entrar com o valor de um produto e o percentual de desconto e imprimir o novo valor com base no percentual informado. Para fazer o cálculo, implemente uma função.
```C
#include <stdio.h>
#include <stdlib.h>

float desc(float x, float y)
{
    float res;
    res = x-(x*(y/100));
    return res;
}

void main()
{
    float n1,n2;
    
    printf ("Insira o valora do produto: ");
    scanf ("%f", &n1);

    printf ("\nInsira o percentual de desconto do produto: ");
    scanf ("%f", &n2);

    printf ("\nO produto com o desconto eh: %.2f", desc(n1,n2));

}
```
5 - Implemente um programa que leia uma mensagem e um caractere. Após a leitura, o programa deve, por meio de função, retirar todas as ocorrências do caractere informado na mensagem colocando * em seu lugar. A função deve também retornar o total de caracteres retirados. Ao final, o programa deve imprimir a frase ajustada e a quantidade de caracteres substituídos.
```C
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

char conversao(char x[50])
{   
    for (int i = 0;i < (strlen(x))-1; i++)
    {      
        x[i] = '*';
    }
    return printf ("%s", x);
}
void main()
{
    char x[50];
    int cont=0;
    
    
    printf ("Digite uma palavra: ");
    fgets(x,50,stdin);
    cont = (strlen(x))-1;
    
    printf ("\nO numero de caracteres substituidos: %i", cont);
    
    printf ("\nA palavra convertida e: ");
    printf ("%s", conversao(x));
   
}
```
6- Escreva um função recursiva para calcular o máximo divisor comum de dois números
```C
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int mdc(int n1, int n2)
{
    int res;  
    do
    {
        res = n1 % n2;

        n1 = n2;
        n2 = res;

    }while (res != 0);
    return n1;
}
    
void main()
{
    int n1, n2;
    printf ("Insira o primeiro numero para o calculo do MDC: ");
    scanf ("%i", &n1);

    printf("Insira o segundo numero para o calculo do MDC: ");
    scanf ("%i", &n2);

    printf ("O resultado do calculo do MDC dos numeros %i e %i eh: ", n1,n2);
    printf ("%i", mdc(n1,n2));
}
```
