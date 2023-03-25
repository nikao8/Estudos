let anos_copa = [1952,1962,1970,1994,2002];

for(let i = 0; i < anos_copa.length; i++)
{
    console.log("O brasil ganhou a copa do ano de: " + anos_copa[i]);
}

let frutas = ['Banana', 'Maçã', 'Pera', 'Uva', 'Melância'];

for(let i = 0; i < frutas.length; i++)
{
    if(frutas[i].toLowerCase() == 'pera')
    {
        break;
    }
    console.log(frutas[i]);
}

/*
 Exercicios de perguntas e respostas:

 ex1:

 O codigo de ex1 retorna com erro pois não foi declarado uma função corretamente com a palavra reservada function e a sintaxe correta, exemplo: function teste(){}
 Além disso no console.log não é possivel printar a palavra reservada var, que é usada para declaração de variaveis(não houve declaração), seria possivel printar var
 se estivesse entre aspas simples ou duplas, indicando uma string.

 ex2:

 Na função dividirDois a variavel "dois não existe", só existe no escopo da função somarDois, fora dela a variável não existe.
 
 ex3:

 Trocar o nome da variavel numero declarada na primeira linha, pois ela esta sendo subescrita dentro do for, pois ela já existe fora do laço, quando é chamada no loop
 o javascript utiliza a variável já criada.

*/ 

