package main

import (
	"fmt"
	"reflect"
)

func main() {

	// TIPOS DE DECLARAÇÃO DE VARIAVEIS:
	//var nome string = "Nicolas"
	var nome = "Nicolas"
	idade := 21
	var versao = 1.1

	fmt.Println("Olá,", nome, "! sua idade é:", idade)
	fmt.Println("Versão do programa: ", versao)

	fmt.Println("Tipo da variavel versao:", reflect.TypeOf(versao))
}
