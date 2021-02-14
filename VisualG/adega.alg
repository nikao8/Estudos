algoritmo "ex1"
//Nicolas Marques Pacheco
//Turma 0025
//Exercicio 1 da lista2
var
estoque: inteiro
vet: vetor [1..3] de inteiro
contador: inteiro
acumulador: real
finalize: caracter
porcent: real
porra: real
inicio

escreval ("Insira a quantidade de vinhos do seu estoque, por tipo de vinho...")
escreval ("Entenda como: Vinho Tinto [1] | Vinho Branco [2] | Vinho Rose [3]")
escreval ()
para contador de 1 ate 3 passo 1 faca

escreva ("[",contador,"] -> ")
leia (vet[contador])
fimpara

acumulador <- 0

para contador de 1 ate 3 passo 1 faca
acumulador <- acumulador + (vet[contador])

fimpara

//-------------------------------------

para contador de 1 ate 3 passo 1 faca

porcent <- 100 * (vet[1])
porra <- (porcent) / (acumulador)

fimpara


para contador de 1 ate 3 faca


fimpara
//1
contador <- 1
escreval ("porcentagem do vinho ", contador, " é -> ",porra)
//------------
para contador de 1 ate 3 passo 1 faca

porcent <- 100 * (vet[2])
porra <- (porcent) / (acumulador)

fimpara


para contador de 1 ate 3 faca


fimpara
  //2
contador <- 2
escreval ("porcentagem do vinho ", contador, " é -> ",porra)

//------------------
para contador de 1 ate 3 passo 1 faca

porcent <- 100 * (vet[3])
porra <- (porcent) / (acumulador)

fimpara
// 3
contador <- 3
escreval ("porcentagem do vinho ", contador, " é -> ",porra)

escreval ("Aperte [f] e tecle [Enter] para finalizar o programa")
 leia (finalize)

se (finalize = "f") entao
escreval()
escreval ("Obrigado volte sempre")
fimalgoritmo
fimse


