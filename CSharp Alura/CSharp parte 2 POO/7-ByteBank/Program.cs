using System;

namespace _7_ByteBank
{
    class Program
    {
        static void Main(string[] args)
        {
            
            ContaCorrente conta = new ContaCorrente(867,86712540);
            Console.WriteLine("Total de contas criadas: " + ContaCorrente.TotalDeContasCriadas);

            Console.WriteLine(conta.Agencia);
            Console.WriteLine(conta.Numero);

            ContaCorrente contaDaGabriela = new ContaCorrente(867, 86745820);

            Console.ReadLine();
        }
    }
}
