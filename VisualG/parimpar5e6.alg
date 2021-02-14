algoritmo "ex5e6"
// Função : armazenar 10 numeros e mostrar em par ou impar
// Autor : Nicolas Marques
// exercicio 5 e 6 da lista
var
contador, numero: inteiro

imp: vetor [1..10] de inteiro
par: vetor [1..10] de inteiro

inicio

// esse foi foda janio, tive que procurar ajuda na net

para contador de 1 ate 10 faca
escreval ("Insira um número de sua escolha: ")
leia (numero)

enquanto (numero = 0) faca
      escreval("Zero é inválido. digite um número válido")
      leia(numero)
fimenquanto

  se (numero MOD 2 = 0) entao
     par[contador] <- numero
     senao
     imp[contador] <- numero
  fimse
fimpara

escreval ("Resultados:")
 escreval()
 escreval ("Numeros Pares:")

escreval()

para contador de 1 ate 10 faca

escreval (par[contador])
fimpara

escreval()

escreval ("Numeros Impares:")

escreval()

para contador de 1 ate 10 faca

escreval (imp[contador])
fimpara



fimalgoritmo
