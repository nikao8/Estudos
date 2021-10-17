namespace _6_ByteBank
{
    public class ContaCorrente
    {
        //public int agencia;
        //public int numero;
        private double _saldo = 100; // atribuindo um valor padrão direto na classe!

        /*
        private Cliente _titular;

        public Cliente Titular
        {
            get
            {
                return _titular;
            }
            set
            {
                _titular = value;
            }
        }
        */
        //simplificação:
        public Cliente Titular { get; set; }
        public int Agencia { get; set; }
        public int Numero { get; set; }
        // utilizar o 'prop' para agilizar. digitar: prop + tab + tab + tipo + tab + tab + nome propiedade
        public double Saldo
        {
            get
            {
                return _saldo;
            }
            set // o argumento é dado como value
            {
                if (value < 0)
                {
                    return;
                }

                _saldo = value;
            }
        }

        public bool Sacar(double valor)
        {
            if (this._saldo < valor)
            {
                return false;
            }
            else
            {
                this._saldo -= valor;

                return true;
            }
        }

        public void Depositar(double valor)
        {
            this._saldo += valor;
        }

        public bool Tranferir(double valor, ContaCorrente contaDestino)
        {
            if (this._saldo < valor)
            {
                return false;
            }
            else
            {
                this._saldo -= valor;
                contaDestino.Depositar(valor);
                return true;
            }
        }
    }
}




