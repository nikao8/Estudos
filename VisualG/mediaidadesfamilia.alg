algoritmo "ex4"
// Função : Calculo media de idade das familias
// Autor : Nicolas  Marques
var
idade: vetor [1..10] de inteiro
contador: inteiro
med: real

inicio

escreval ("Insira a sua idade no campo abaixo, cada pessoa em uma casa...")
escreval()

para contador de 1 ate 10 passo 1 faca
escreva ("Insira a ", contador, " idade -> ")
leia (idade[contador])
fimpara

para contador de 1 ate 10 faca
med <-med + idade[contador] /10

fimpara

se (med>0) e (med <=12) entao
escreval()
escreval ("A media de idade desse grupo é:",med," logo ele é classificado como [CRIANÇA]")
fimse

se (med > 12) e (med <= 18) entao
escreval()
escreval ("A media de idade desse grupo é:",med," logo ele é classificado como [ADOLESCENTE]")
fimse

se (med > 18) e (med <= 39) entao
escreval()
escreval ("A media de idade desse grupo é:",med," logo ele é classificado como [JOVEM]")
fimse

se (med > 39) e (med <= 59) entao
escreval()
escreval ("A media de idade desse grupo é:",med," logo ele é classificado como [EXPERIENTE]")
fimse

se (med > 59) entao
escreval()
escreval ("A media de idade desse grupo é:",med," logo ele é classificado como [IDOSO]")
fimse
fimalgoritmo
