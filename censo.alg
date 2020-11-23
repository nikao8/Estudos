algoritmo "ex2"
// Função :   censo
// Autor :   Nicolas Marques

var
familia: vetor [1..10] de inteiro
contador: inteiro
receber: inteiro
inicio

escreval ("Esse é um calculo do censo de familias 2020...")
escreval()
escreval ("Insira a quantidade de pessoas na família")
para contador de 1 ate 10 passo 1 faca
     escreva ("Família " ,contador,"-> ")
     leia (familia[contador])
fimpara
escreval()
para contador de 1 ate 10 faca

     se (familia[contador]>=5) entao
     escreval ("A familia [",contador,"] tem ",familia[contador], " pessoas.")

     fimse
fimpara
escreval()
escreval ("Vale lembrar que não é exibido famílias com menos de 5 pessoas !!!")

fimalgoritmo
