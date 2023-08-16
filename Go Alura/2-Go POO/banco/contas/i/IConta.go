package i

type IConta interface {
	Sacar(value float64) bool
	Depositar(value float64) bool
	GetSaldo() float64
}
