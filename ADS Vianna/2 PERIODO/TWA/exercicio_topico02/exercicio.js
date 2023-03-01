// Aluno: Nicolas Marques Pacheco

/*
- Declare uma variável contendo uma string 
- Declare uma variável contendo um número dentro de uma string
- Declare uma variável com a sua idade 
- Declare outra variável para contar a frase: Meu nome é SEU NOME e minha idade é SUA IDADE
- Declare  outras duas variáveis, uma  com seu sobrenome e com seu nome exiba as mesmas juntas
- Coloque a seguinte frase em uma variável: It's study  time
- Verifique o tipo da variável que contém o seu nome
*/


//- Declare uma variável contendo uma string 
let texto = "teste";

//- Declare uma variável contendo um número dentro de uma string
let numString = "8";

//- Declare uma variável com a sua idade
let idade = 21;

//- Declare outra variável para contar a frase: Meu nome é SEU NOME e minha idade é SUA IDADE
let nome = "Nicolas";
let apresentacao = "Meu nome é " + nome + ", e minha idade é " + idade + " anos";

//- Declare  outras duas variáveis, uma  com seu sobrenome e com seu nome exiba as mesmas juntas
let sobrenome = "Marques Pacheco";
console.log(nome + " " + sobrenome);

//- Coloque a seguinte frase em uma variável: It's study time
texto = "It's study time";

//- Verifique o tipo da variável que contém o seu nome
console.log(typeof(nome));

// Functions 
function Somar(a,b)
{
    return a + b;
}

function Subtracao(a,b)
{
    return a - b;
}

function Multiplicacao(a,b)
{
    return a * b;
}

function Divisao(a,b)
{
    return a / b;
}

function Operacao(funcao,a,b)
{
    var result = funcao(a,b);
    console.log(result);
}
//////////////////////////////////////////


