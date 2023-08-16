package contas

import "banco/pessoas"

type ContaPoupanca struct {
	Titular                              pessoas.Titular
	NumeroAgencia, NumeroConta, Operacao int
	saldo                                float64
}

func (c *ContaPoupanca) Sacar(valorDoSaque float64) bool {
	if valorDoSaque > c.saldo || valorDoSaque < 0 {
		return false
	}

	c.saldo -= valorDoSaque
	return true
}

func (c *ContaPoupanca) Depositar(valorDeposito float64) bool {
	if valorDeposito < 0 {
		return false
	}

	c.saldo += valorDeposito
	return true
}

func (c *ContaPoupanca) GetSaldo() float64 {
	return c.saldo
}
