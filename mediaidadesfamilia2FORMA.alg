algoritmo "ex4 maneira 2"
// Função : Calculo media de idade das familias
// Autor : Nicolas  Marques

// ESSA É A SEGUNDA MANEIRA DE INTERPRETAR O ENUNCIADO DA QUESTAO 4, LOGO-
// FIZ DOS DOIS JEITOS.

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
escreval()
     se (idade[contador] >0) e (idade[contador]<= 12) entao
     escreval("Categoria [CRIANÇA]")
     fimse

     se (idade[contador] >12) e (idade[contador]<= 18) entao
     escreval("Categoria [ADOLESCENTE]")
     fimse

     se (idade[contador] >18) e (idade[contador]<= 39) entao
     escreval("Categoria [JOVEM]")
     fimse

     se (idade[contador] >39) e (idade[contador]<= 59) entao
     escreval("Categoria [EXPERIENTE]")
     fimse

     se (idade[contador] >59) entao
     escreval("Categoria [IDOSO]")
     fimse
escreval()
fimpara

para contador de 1 ate 10 faca
med <-med + idade[contador] /10
fimpara

escreval("---------------------------------------------------------------------------------")
escreval()


escreval ("A media de idade do grupo é: ",med)
escreval()
escreval("---------------------------------------------------------------------------------")
escreval()
escreval ("Por: Nicolas M. ")




fimalgoritmo
