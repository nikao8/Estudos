using System;

namespace _5_ByteBank
{
    class Program
    {
        static void Main(string[] args)
        {
            Cliente gabriela = new Cliente();

            gabriela.nome = "Gabriela";
            gabriela.cpf = "000.000.000-00";
            gabriela.profissao = "Engenheira civil";

            ContaCorrente conta = new ContaCorrente();

            conta.titular = gabriela;
            conta.saldo = 500;
            conta.agencia = 563;
            conta.numero = 5634627;

            // Ambos referenciam o mesmo objeto
            Console.WriteLine(gabriela.nome);
            Console.WriteLine(conta.titular.nome);

        }
    }
}
