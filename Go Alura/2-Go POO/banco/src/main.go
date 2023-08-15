package main

import (
	"fmt"
)

type ContaCorrente struct {
	titular       string
	numeroAgencia int
	numeroConta   int
	saldo         float64
}

func main() {
	/*
		var contaNicolas ContaCorrente
		contaNicolas = ContaCorrente{"nikao", 1111, 1122, 2500.0}
	*/

	// contaNicolas := ContaCorrente{titular:"nikao", numeroAgencia:1111, numeroConta:1122, saldo:2500.0}

	contaNicolas := ContaCorrente{"nikao", 1111, 1122, 2500.0}

	fmt.Print("Titular: ", contaNicolas.titular, "\n",
		"Numero Agenc: ", contaNicolas.numeroAgencia, "\n",
		"Numero Conta: ", contaNicolas.numeroConta, "\n",
		"Saldo: ", contaNicolas.saldo)
}
