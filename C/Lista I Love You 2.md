1. Faça um alg. que leia 3 números e para cada um deles imprimir o seu dobro. somente será valido se realizado através de uma função e o resultado impresso no fim do alg.
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
2. Faça um programa que receba as notas de três provas e calcule a média. Para o cálculo, escreva uma função. O programa deve imprimir a média ao final.
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
    
    printf ("Insira as suas 3 notas em seguida: \n");
    scanf ("%i", &n1);
    scanf ("%i", &n2);
    scanf ("%i", &n3);

    printf ("A media eh: %i" ,mednota(n1,n2,n3));
}
```
3. Faça um programa que leia o saldo e o % de reajuste de uma aplicação financeira e imprimir o novo saldo após o reajuste. O cálculo deve ser feito por uma função.
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
4. Na pandemia a economia esta baixa..., os comerciantes estão procurando aumentar suas vendas oferecendo desconto. Faça um programa que permita entrar com o valor de um produto e o percentual de desconto e imprimir o novo valor com base no percentual informado. Para fazer o cálculo, implemente uma função.
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
5. Implemente um programa que leia uma mensagem e um caractere. Após a leitura, o programa deve, por meio de função, retirar todas as ocorrências do caractere informado na mensagem colocando * em seu lugar. A função deve também retornar o total de caracteres retirados. Ao final, o programa deve imprimir a frase ajustada e a quantidade de caracteres substituídos.
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
6. Escreva um função recursiva para calcular o máximo divisor comum de dois números
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
7. Faça um programa que leia os catetos (dois catetos) de um triângulo retângulo e imprima a hipotenusa. Para fazer o cálculo,
implemente uma função. Utilize a fórmula a seguir. o menor valor e incrementada em uma unidade até que seja igual ao valor final.
```C
#include <stdio.h>
#include <stdlib.h>
#include <math.h>

float hipotenusa(float c1, float c2)
{
    float res=0;
    res = sqrt(pow(c1,2)+pow(c2,2));
    return printf("%.2f", res);
}

void main()
{
    float n1,n2;

    printf ("Insira os dois catetos de um triangulo retângulo para descobrir a hipotenusa: \n");
    scanf ("%f %f",&n1,&n2);

    printf("\n\nO resultado eh: ");
    hipotenusa(n1,n2);
}
```
8. Faça um programa que verifique quantas vezes um número é
divisível por outro. A função deve receber dois parâmetros, o
dividendo e o divisor. Ao ler o divisor, é importante verificar se
ele é menor que o dividendo. Ao final imprima o resultado.
```C
#include <stdio.h>
#include <stdlib.h>

int op(int dividendo, int divisor)
{
    int cont=0,res;
    res = dividendo / divisor;
    cont++;
    if (res > divisor)
    {
        do
        {   
            res = res / divisor;
            cont++;    
        }while (res != 0);
    }
    return printf("%i", cont);
}

void main()
{
    int dividendo, divisor;
    printf ("Insira o dividendo: ");
    scanf ("%i", &dividendo);
    printf ("Insira o divisor: ");
    scanf("%i", &divisor);
    
    if (divisor <= dividendo)
    {
        printf ("\nO total de vezes que o dividendo e dividido pelo divisor eh de: ");
        op(dividendo,divisor);
    }
    else
    {
        printf ("\nOperacao invalida!.\n");
        system ("pause");
        system ("exit");
    }
}
```
9. Construa um programa que leia um valor inteiro e retorne se a
raiz desse número é exata ou não. Escreva uma função para fazer
a validação. Ao final imprima o resultado.
```C
#include <stdio.h>
#include <stdlib.h>
#include <math.h>

int calcul(int x)
{
    if (pow(sqrt(x),2) == x)
    {
        return printf("\nA raiz de %i eh exata!",x);
    }
    else
    {
        return printf ("\nA raiz de %i nao eh exata..",x);
    }
}
void main()
{
    int x;
    printf ("Insira um numero para calculo da raiz: ");
    scanf ("%i", &x);

    calcul(x);
}
```
10. A matriz de dados contém na 1ª coluna a matrícula do aluno; na
2ª, o sexo (0 para feminino e 1 para masculino); na 3ª, o código
do curso, e na 4ª, o CR (coeficiente de rendimento). Faça um
programa que armazene esses dados sabendo-se que o código
do curso é uma parte da matrícula: aascccnnn (aa ano, s semestre,
ccc código do curso e nnn matrícula no curso). Além disso, um
grupo empresarial resolveu premiar a aluna com CR mais alto de
um curso cujo código deverá ser digitado. Suponha 10 alunos e
que o CR é umnº inteiro.
```C
#include <stdio.h>
#include <stdlib.h>

int main()
{
    int dados[10][4], i = 0, cont=0, maior=0;

    for (i = 0; i < 10; i++){

        cont++;
        printf ("\n-----------------------------\nALUNO(A) [%i]\n-----------------------------\n", cont);
        printf ("\nInsira os dados a seguir:\n\n");
        printf ("Matricula: ");
        scanf ("%i", &dados[i][0]);
        printf ("Sexo ([0]Feminino | [1]Masculino): ");
        scanf ("%i", &dados[i][1]);
        printf ("Codigo do curso: ");
        scanf ("%i", &dados[i][2]);
        printf ("Coeficiente de rendimento: ");
        scanf ("%i", &dados[i][3]);
    }
    
    system ("cls || clear");

    for (i = 0; i < 10; i++)
    {
        if (dados[i][1] == 0 && dados[i][3] > maior)
        {
            maior = dados[i][3];
            
            if (dados[i][3] == maior)
            {
                printf ("\n\nAluna %i voce foi premiada pelo grupo empresarial por ter O CR mais alto!\nSeu CR: %i",i+1,dados[i][3]);
            }
        }
    }

    return 0;
}
```
11. Supondo que uma matriz apresente em cada linha o total de
produtos vendidos ao mês por uma loja que trabalha com cinco
tipos diferentes de produtos, construir um programa que leia esse
total e, ao final, apresente o total de produtos vendidos em cada
mês e o total de vendas por ano por produto.
```C
#include <stdio.h>
#include <stdlib.h>

int main()
{
    int prod[5][12], i = 0, j = 0;
    float totAno1 = 0, totAno2 = 0, totAno3 = 0, totAno4 = 0, totAno5 = 0;

    for (i = 0; i < 5; i++)
    {
        printf ("\nInsira a quantidade do produto [%i] vendido no mes:\n", i+1);
        for (j = 0; j < 12; j++)
        {
            printf ("\nMes %i --> ", j+1);
            scanf ("%i", &prod[i][j]);          
        }   
        printf ("\n---------------------------------------------\n");
    }

    for (j = 0;j < 12; j++) // Recebendo o total por ANO de cada produto
    {
        totAno1 += prod[0][j];
        totAno2 += prod[1][j];
        totAno3 += prod[2][j];
        totAno4 += prod[3][j];
        totAno5 += prod[4][j];  
    }
    
    system ("cls || clear");

    for (i = 0; i < 5; i++) // Printando o total de produtos vendidos em cada MES
    {
        printf ("\nO total no MES do produto %i eh: %i\n", i+1);
        for (j = 0; j < 12; j++)
        {             
            printf ("\nMes %i --> %i", j+1, prod[i][j]);
        }
        printf ("\n\n---------------------------------------------\n");
    }
    
    // Printando total de produtos vendido no ANO por produto  
    printf ("\nO total no ANO do produto 1 eh: %.2f", totAno1);
    printf ("\nO total no ANO do produto 2 eh: %.2f", totAno2);
    printf ("\nO total no ANO do produto 3 eh: %.2f", totAno3);
    printf ("\nO total no ANO do produto 4 eh: %.2f", totAno4);
    printf ("\nO total no ANO do produto 5 eh: %.2f", totAno5);
    
    return 0;
}
```
11. Escreva um software que gerencie uma cadeia de estoques
de 5 produtos em 5 armazéns de uma empresa, conforme figura
abaixo:

![Estoque](https://user-images.githubusercontent.com/67568578/111078693-8b020d00-84d5-11eb-82b0-6dfd4de1841a.png)

```C
#include <stdio.h>
#include <stdlib.h>

int main()
{
    int mat[5][5] = {{150,0,100,150,200},{200,300,230,100,90},{250,300,0,200,150},{300,100,90,450,0},{350,300,400,250,200}},n1, n2, qtd;
    int consulta=0, i=0,j=0;
    
    do
    {    
        consulta++;

        printf ("\n\n--------------------------------------\nConsulta numero %i\n--------------------------------------\n\n", consulta);
        
        for (i = 0; i< 5; i++)
        {
            printf("     PRD_%i",i);
        }
        for (i = 0; i < 5; i++)
        {
            printf("\nARM_%i    ",i);
 
            for (j = 0; j< 5; j++)
            {
                printf("%i \t  ",mat[i][j]);
            }
        }
        printf("\n");
        
        printf ("\nInsira o numero do Armazem a ser buscado: ");
        scanf ("%i", &n1);   
        
        if (n1 == -1)
        {
            break;
        }
        else
        {
            printf ("\nInsira o numero do produto: ");
            scanf ("%i", &n2);
            printf ("\nInsira a quantidade a ser retirada do estoque: ");
            scanf ("%i", &qtd);  
            system ("cls || clear");
    
            if (qtd <= mat[n1][n2])
            {
                printf ("Operacao aceita!\n");
                mat[n1][n2] = mat[n1][n2] - qtd;
                printf ("\nEstado atual do item selecionado no estoque: %i\n\n", mat[n1][n2]);
                printf ("Tabela atualizada:\n\n");
                    for (i = 0; i< 5; i++)
                    {
                        printf("     PRD_%i",i);
                    }
                    for (i = 0; i < 5; i++)
                    {
                        printf("\nARM_%i    ",i);
 
                        for (j = 0; j< 5; j++)
                        {
                            printf("%i \t  ",mat[i][j]);
                        }
                    }
                 printf("\n");
            }
            else
            {
                printf ("Estoque com quantidade insuficiente para atender ao pedido!.");
            }
        }
    }while(n1 != 0);

    return 0;
}
```
