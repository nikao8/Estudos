1. Um escritório de contabilidade Super Contábil está realizando o reajuste do
salário dos funcionários de todos os seus clientes. Para isso, estão utilizando
como referência o reajuste acordado com os sindicatos de cada classe
trabalhadora, conforme presentado na tabela a seguir. Para ajudar o
escritório nesta tarefa, faça um programa em C que receba o salário atual, o
cargo conforme especificado na tabela a seguir e realize o cálculo do reajuste
do salário. Ao término do cálculo o programa deve imprimir o valor do
reajuste e o novo salário do funcionário.
Para resolver este exercício foi utilizado o código do cargo para
determinar a qual cargo pertence o funcionário, no qual o salário está
sendo reajustado, assim, foi declarada uma variável do tipo inteiro para
armazenar o cargo e foram declaradas duas variáveis do tipo real para
armazenar o salário atual do funcionário e o valor do reajuste. Além disso,
foi utilizada a estrutura de decisão if-else para decidir qual fluxo executar
de acordo com o cargo do funcionário. Como são 4 cargos, então são
necessários 4 fluxos distintos na estrutura de decisão. Veja a seguir a
resposta do exercício e os comentários.

```C
#include <stdio.h>
#include <stdlib.h>

int main()
{

    int cargo; 
    float salario, reaj;
    system ("color 03");
    printf ("\nSelecione o seu cargo para o calculo do reajuste:\n\n 1- Auxiliar de escritorio \n 2- Secretario\n 3- Cozinheiro\n 4- Entregador\n");
    scanf ("%i", &cargo);
    printf ("Insira o seu salario atual: ");
    scanf ("%f", &salario);

    switch (cargo)
    {
        case 1:
        reaj = (salario * 0.07) + salario;
        break;

        case 2:
        reaj = (salario * 0.09) + salario;   
        break;

        case 3:
        reaj = (salario * 0.05) + salario;
        break;

        case 4:
        reaj = (salario * 0.12) + salario;
        break;

        default:
        return (main);
        break;  
    }

    system ("cls || clear");
    printf ("O seu salario reajustado e: %.2f", reaj);

    return 0;
}
```

2. O hospital local está fazendo uma campanha para receber doação de
sangue. O propenso doador deve inicialmente se cadastrar informando o
seu nome completo, sua idade, seu peso, responder a um breve
questionário e apresentar um documento oficial com foto. Faça um
programa que permita ao hospital realizar o cadastro dos voluntários para
avaliar a aptidão quanto à doação de sangue. Para estar apto a doar, o
voluntário deve ter idade entre 16 e 69, pesar pelo menos 50 kg, estar
bem alimentado e não estar resfriado. O programa deve ler os dados e
imprimir no final o nome do voluntário e se ele está apto ou não.

```C
int main()
{
    int idade, peso, doente, alimentado;
    char nome[40];

    system ("color 06");

    printf ("\nPreencha o questionario abaixo para realizar a doação de sangue.\n\n");
    
    printf ("Insira seu nome completo: ");
    gets (nome);

    printf ("\nInsira sua idade: ");
    scanf ("%i", &idade);

    printf ("\nInsira seu peso: ");
    scanf ("%i", &peso);

    printf ("\nVoce esta resfriado ? (Utilize [1]Sim [2]Nao) ");
    scanf ("%i", &doente);
    
    printf ("\nVoce esta bem alimentado? (Utilize [1]Sim [2]Nao) ");
    scanf ("%i", &alimentado);
    system ("cls");

    if (((idade > 15) && (idade < 69)) && (peso > 50) && (doente == 2) && (alimentado == 2))
    {
        printf("Ola %s voce esta elegivel a doacao de sangue", nome);
        printf ("\n\nLembre-se %s, nao esqueca o documento com foto no dia da retirada de sangue!.\n\n", nome);
    }
    else
    {
        printf("Ola %s voce nao esta elegivel a doacao de sangue...", nome);
    }

    return 0;
}
```

3. Faça um programa em C que leia o destino do passageiro, se a viagem inclui retorno
(ida e volta) e informe o preço da passagem conforme a tabela a seguir:
Para resolver este exercício será necessário primeiro verificar qual é o destino, depois
de verificar o destino, verificar se o trecho inclui somente ida ou ida e volta, ou seja, há
uma verificação condicionada a outra, a primeira será o destino e a segunda e aninhada
à primeira, será a condição do trecho.

```C
int main()
{
    int destino, idavolta, preco;
    printf ("Insira o destino da sua viagem (usando numeros):\n\n[1] Regiao Norte\n[2] Regiao Nordeste\n[3] Regiao Centro-Oeste\n[4] Regiao Sul\n\nInsira o codigo do destino: ");
    scanf ("%i", &destino);
    
    printf ("\n\nSua viagem e de ida e volta ?\n\n[1] Sim\n[2] Nao\n\nDigite o numero correspondente: "); 
    scanf ("\n%i", &idavolta);

    switch (destino)
    {
        case 1:
        if (idavolta == 1){
            preco = 900;
        }
        else if (idavolta == 2){
            preco = 500;
        }
        else{
            printf ("Digito invalido repita o processo.");
            return main();
        }
        break;

        case 2:
        if (idavolta == 1){
            preco = 650;
        }
        else if (idavolta == 2){
            preco = 350;
        }
        else{
            printf ("Digito invalido repita o processo.");
            return main();
        }
        break;
    
        case 3:
        if (idavolta == 1){
            preco = 600;
        }
        else if (idavolta == 2){
            preco = 350;
        }
        else{
            printf ("Digito invalido repita o processo.");
            return main();
        }
        break;

        case 4:
        if (idavolta == 1){
            preco = 550;
        }
        else if (idavolta == 2){
            preco = 300;
        }
        else{
            printf ("Digito invalido repita o processo.");
            return main();
        }
        break;

        default:
            printf ("Digito invalido repita o processo.");
            return main();
        break;
    }
    
    system ("cls");
    printf ("\nO valor da sua viagem e de: %i R$", preco);
  
    return 0;
}
```

4. A prefeitura do Juiz de Fora abriu uma linha de crédito para os funcionários
estatutários. O valor máximo da prestação não poderá ultrapassar 30% do salário
bruto. Faça um programa em linguagem C que permita entrar com o salário bruto
e o valor da prestação e informar se o empréstimo pode ou não ser concedido.

```C
int main()
{
 
    // Define o valor das páginas de código UTF8 e default do Windows
    UINT CPAGE_UTF8 = 65001;
    UINT CPAGE_DEFAULT = GetConsoleOutputCP();
    // Define codificação como sendo UTF-8
    SetConsoleOutputCP(CPAGE_UTF8);

    float salario, prestacao;

    printf ("\nInsira seu salário bruto: ");
    scanf ("%f", &salario);

    printf ("\n\nInsira a prestação: ");
    scanf ("%f", &prestacao); 


    if (prestacao <= salario * 0.3)
    {
        printf ("O empréstimo pode ser concedido !!!");
    }
    else
    {
        printf("O empréstimo não pode ser concedido....");     
    }

    return 0;
}
```

5. Faça um programa que permita entrar com o salário de uma pessoa e imprima odesconto do INSS segundo a tabela seguir:

```C
int main()
{
 
    // Define o valor das páginas de código UTF8 e default do Windows
    UINT CPAGE_UTF8 = 65001;
    UINT CPAGE_DEFAULT = GetConsoleOutputCP();
    // Define codificação como sendo UTF-8
    SetConsoleOutputCP(CPAGE_UTF8);

    float salario;

    printf ("Insira seu salário bruto: ");
    scanf ("%f", &salario);
    
    if (salario <= 600)
    {
        printf ("Isento.");
    }
    else if (salario > 600 && salario <= 1200)
    {
        
        printf ("Desconto de 20 porcento = %.2f", salario * 0.2);
    }
    else if (salario > 1200 && salario <= 2000)
    {
        printf ("Desconto de 25 porcento = %.2f, ", salario * 0.25);
    }
    else 
    {
        printf ("Desconto de 30 porcento = %.2f, ", salario * 0.30);
    }


    return 0;
}
```

6. Depois da liberação do governo para as mensalidades dos planos de saúde, as
pessoas começaram a fazer pesquisas para descobrir um bom plano, não muito caro. Um
vendedor de um plano de saúde apresentou a tabela a seguir. Faça um programa que entre com
o nome e a idade de uma pessoa e imprima o nome e o valor que ela deverá pagar.

```C
int main()
{
    // Adicionar caracteres do português
    // Define o valor das páginas de código UTF8 e default do Windows
    UINT CPAGE_UTF8 = 65001;
    UINT CPAGE_DEFAULT = GetConsoleOutputCP();
    // Define codificação como sendo UTF-8
    SetConsoleOutputCP(CPAGE_UTF8);

    int idade, menu;
    char nome[30];

    printf ("Para descobrir um plano adequado para você preencha os requisitos abaixo:\n\n");
    
    printf ("Insira seu nome: ");
    gets (nome);
    
    printf ("\nInsira sua idade: ");
    scanf ("%i", &idade);

    system ("cls");
    if (idade <= 10)
    {
        printf ("Olá %s para sua idade o preço mais adequado de acordo com a tabela é de R$30,00.", nome);
    }
    else if (idade > 10 && idade <= 29)
    {
        printf ("Olá %s para sua idade o preço mais adequado de acordo com a tabela é de R$60,00.", nome);
    }
    else if (idade > 29 && idade <= 45)
    {
        printf ("Olá %s para sua idade o preço mais adequado de acordo com a tabela é de R$120,00.", nome);
    }
    else if (idade > 45 && idade <= 59)
    {
        printf ("Olá %s para sua idade o preço mais adequado de acordo com a tabela é de R$150,00.", nome);
    }
    else if (idade > 59 && idade <= 65)
    {
        printf ("Olá %s para sua idade o preço mais adequado de acordo com a tabela é de R$250,00.", nome);
    }
    else
    {
        printf ("Olá %s para sua idade o preço mais adequado de acordo com a tabela é de R$400,00.", nome);
    }
    
    printf ("\n\nO que deseja %s ?\n", nome);
    printf ("[1] Sair\n[2] Nova consulta\n--> ");
    scanf("%i", &menu);

    switch (menu)
    {
        case 1:
        system ("exit");
        break;

        case 2:
        return main();
        break;

        default:
        printf ("\n\nDigito inválido!\n");
        printf ("\n\nO que deseja %s ?\n", nome);
        printf ("[1] Sair\n[2] Nova consulta\n--> ");
        scanf("%i", &menu);
    }

    return 0;
}
```

7. A biblioteca de uma Universidade deseja fazer um programa que leia o nome do
livro que será emprestado, o tipo de usuário (professor ou aluno) e possa imprimir
um recibo conforme mostrado a seguir. Considerar que o professor tem dez dias
para devolver o livro e o aluno só três dias.
• Nome do livro:
• Tipo de usuário:
• Total de dias:

```C
int main()
{
    // Adiciona caracteres do português
    // Define o valor das páginas de código UTF8 e default do Windows
    UINT CPAGE_UTF8 = 65001;
    UINT CPAGE_DEFAULT = GetConsoleOutputCP();
    // Define codificação como sendo UTF-8
    SetConsoleOutputCP(CPAGE_UTF8);

    int user;
    char nome_livro[30];

    printf ("Insira o nome do livro a ser emprestado: ");
    gets (nome_livro);

    printf ("\nVocê é Professor ou Aluno ? ([1]Professor [2]Aluno) :");
    scanf ("%i", &user);
    
    system ("cls");
    
    switch (user)
    {
        case 1:
        printf ("Olá este é seu recibo de locação:\n\nNome do Livro: %s\nTipo de usuário: Professor(a)\nTotal de dias: 10 dias.\n", nome_livro);
        break;

        case 2:
        printf ("Olá este é seu recibo de locação:\n\nNome do Livro: %s\nTipo de usuário: Aluno(a)\nTotal de dias: 3 dias.\n", nome_livro);
        break;

        default:
        printf ("Digito inválido, refaça a operação.\n");
        return main();
        break;

    }

    return 0;
}
```

8. Construa um programa que leia o percurso em quilómetros, o tipo do carro e
informe o consumo estimado de combustível, sabendo-se que um carro tipo C
faz 12 km com um litro de gasolina, um tipo B faz 9 km e o tipo C, 8 km por litro.

```C
int main()
{
    // Adicionar caracteres do português
    // Define o valor das páginas de código UTF8 e default do Windows
    UINT CPAGE_UTF8 = 65001;
    UINT CPAGE_DEFAULT = GetConsoleOutputCP();
    // Define codificação como sendo UTF-8
    SetConsoleOutputCP(CPAGE_UTF8);

    int tipocarro;
    float km, consumo;

    printf ("Escolha o tipo do carro (Usando os numeros respectivos):\n\n[1] Tipo A\n[2] Tipo B\n[3] Tipo C\n\n--> ");
    scanf ("%i", &tipocarro);

    printf ("\n\nInsira o percurso em quilômetros: ");
    scanf ("%f", &km);

    system ("cls");

    switch (tipocarro)
    {
        case 1:
        consumo = km / 12;
        printf ("\nO consumo do seu carro no percurso de %.2f quilometros foi de %.2f litros.\n", km, consumo);
        break;
    
        case 2:
        consumo = km / 9;
        printf ("\nO consumo do seu carro no percurso de %.2f quilometros foi de %.2f litros.\n", km, consumo);
        break;    
    
        case 3:
        consumo = km / 8;
        printf ("\nO consumo do seu carro no percurso de %.2f quilometros foi de %.2f litros.\n", km, consumo);
        break;

        default:
        printf ("\nDigito inválido refaça a operação !.\n\n");
        return main();
        break;

    }

    return 0;
}
```
