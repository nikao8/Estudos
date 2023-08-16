package main

import (
	"banco/contas"
	"banco/contas/i"
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

	pessoaLeo := pessoas.Titular{Nome: "Leo", Cpf: "00000000002", Profissao: "Caminhoneiro"}
	contaDoLeo := contas.ContaPoupanca{NumeroAgencia: 777, NumeroConta: 545, Titular: pessoaLeo}

	fmt.Println(contaDoLeo)

	// Interface : Tanto ContaCorrente quanto ContaPoupanca implementam a interface IConta por implementar os metodos que a interface obriga
	// desta forma quando uma struct implementa todos os metodos de uma interface, essa struct implementa a interface

	var contaDoNicolasPoupanca i.IConta
	contaDoNicolasPoupanca = &contas.ContaPoupanca{}

	var contaDoNicolasCorrente i.IConta
	contaDoNicolasCorrente = &contas.ContaCorrente{}

	fmt.Println(contaDoNicolasCorrente, contaDoNicolasPoupanca)
}
