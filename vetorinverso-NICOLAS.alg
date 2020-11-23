algoritmo "semnome"

var

names: vetor [1..5] de caracter
contador: inteiro

inicio

para contador de 1 ate 5 passo 1 faca
 escreval ("Escreva o", contador," nome")
 leia (names[contador])
fimpara

escreval ("Estes foram os nomes respectivamente: ")

para contador de 1 ate 5 passo 1 faca
escreval (contador,"-> ",names[contador])
fimpara

escreval ("Estes são os números de forma inversa: ")

para contador de 5 ate 1 passo -1 faca
escreval (contador,"-> ",names[contador])
fimpara
 
fimalgoritmo
