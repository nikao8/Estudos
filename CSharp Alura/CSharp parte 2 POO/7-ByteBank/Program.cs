using System;

namespace _7_ByteBank
{
    class Program
    {
        static void Main(string[] args)
        {
            ContaCorrente conta = new ContaCorrente(867,86712540);

            conta.Agencia = -10;

            Console.WriteLine(conta.Agencia);
            Console.WriteLine(conta.Numero);

            Console.ReadLine();
        }
    }
}
