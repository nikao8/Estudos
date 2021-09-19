using System;

namespace _4_ByteBank
{
    class Program
    {
        static void Main(string[] args)
        {
            ContaCorrente contaDoBruno = new ContaCorrente();

            contaDoBruno.titular = "Bruno";


            Console.WriteLine("Saldo antes do saque:" + contaDoBruno.saldo);
            contaDoBruno.Sacar(50);
            Console.WriteLine("Saldo depois do saque:" + contaDoBruno.saldo);

            Console.WriteLine("\nSaldo antes do deposito:" + contaDoBruno.saldo);
            contaDoBruno.Depositar(500);
            Console.WriteLine("Saldo depois do Deposito:" + contaDoBruno.saldo);

            Console.ReadLine();

        }
    }
}
