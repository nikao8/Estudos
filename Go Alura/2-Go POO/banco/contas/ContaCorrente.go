package contas

import "banco/pessoas"

type ContaCorrente struct {
	Titular       pessoas.Titular
	NumeroAgencia int
	NumeroConta   int
	saldo         float64
}

func (c *ContaCorrente) Sacar(valorDoSaque float64) bool {
	if valorDoSaque > c.saldo || valorDoSaque < 0 {
		return false
	}

	c.saldo -= valorDoSaque
	return true
}

func (c *ContaCorrente) Depositar(valorDeposito float64) bool {
	if valorDeposito < 0 {
		return false
	}

	c.saldo += valorDeposito
	return true
}

func (c *ContaCorrente) Transferir(valorDaTransferencia float64, contaDest *ContaCorrente) bool {
	if valorDaTransferencia > c.saldo || valorDaTransferencia < 0 {
		return false
	}

	c.saldo -= valorDaTransferencia
	contaDest.Depositar(valorDaTransferencia)
	return true
}

func (c *ContaCorrente) GetSaldo() float64 {
	return c.saldo
}
