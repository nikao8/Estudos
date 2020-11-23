algoritmo "semnome"

var
med: real
contador: inteiro
vet: vetor [1..4] de real
acumulador: real
inicio
escreva ("Esse é um software de calculo da sua situação escolar !!!")
escreval()
escreval()

escreval ("insira suas notas abaixo:")

para contador de 1 ate 4 passo 1 faca
escreva (contador," nota -> ")
leia (vet[contador])

enquanto (vet[contador]<0) ou (vet[contador]>10) faca
escreval ("A sua nota", contador," é inválida, digite-a novamente.")
escreva (contador," nota -> ")
leia (vet[contador])

fimenquanto
fimpara

acumulador <- 0

para contador de 1 ate 4 passo 1 faca

acumulador <- acumulador + (vet[contador])
med<- acumulador/4

fimpara

escreval ("Sua média é -> ",med)
escreval()


se (med >= 6) entao
escreval ("Parabéns voce foi APROVADO !!!")
escreval()
fimse

se (med <= 5.9) e (med >= 3) entao
escreval ("Voce está de PROVA FINAL, consulte a data e hora da prova na direção.")
escreval()
fimse

se (med <= 2.9) entao
escreval ("Voce está REPROVADO, estude mais na proxima !!!.")
escreval()
fimse

escreval ("Se houver alguma dúvida visite a secretaria da escola !!!")
escreval()
escreval ("Bons estudos !!!.")
fimalgoritmo
