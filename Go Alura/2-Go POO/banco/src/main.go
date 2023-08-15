package main

import (
	"banco/contas"
	"banco/pessoas"
	"fmt"
)

func main() {
	contaDoFulano := contas.ContaCorrente{}
	contaDoFulano.Titular = pessoas.Titular{Nome: "Fulano", Cpf: "00000000000", Profissao: "Pedreiro"}
	contaDoFulano.NumeroAgencia = 001
	contaDoFulano.NumeroConta = 1023
	contaDoFulano.Depositar(500.0)

	pessoaJuca := pessoas.Titular{Nome: "Juca", Cpf: "00000000001", Profissao: "Cozinheiro"}
	contaDoJuca := contas.ContaCorrente{Titular: pessoaJuca, NumeroAgencia: 123, NumeroConta: 0321}
	contaDoJuca.Depositar(800.0)

	contaDoFulano.Transferir(100, &contaDoJuca)

	fmt.Println(contaDoFulano.GetSaldo(), contaDoJuca.GetSaldo())

}
