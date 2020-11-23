algoritmo "ex3"
// Função :   converter decimal para binario
// Autor :    Nicolas Marques
var
enter, acumulador: inteiro
res: caracter
sair: caracter
inicio
escreval ("Este é um conversor de base decimal para base binária !!!")
escreval()
escreval ("Insira um número para que o mesmo seja convertido em binário...")

leia (enter)
acumulador <- (enter)
// "zerei" o resultado
res <- ""

enquanto (enter > 0) faca
         se (enter mod 2)=0 entao
         res <- "0" + res
         senao
         res <- "1" + res
         fimse
       enter <- (enter) div 2
fimenquanto
escreval()
escreval (acumulador, " é " , res, " na base binária." )

escreval()
escreval()
escreval()
escreval(" Para sair digite [exit] e tecle [Enter]")

leia (sair)
se (sair = "exit") entao
fimalgoritmo

fimse

