using System;

namespace _2_ByteBank
{
    class Program
    {
        static void Main(string[] args)
        {
            ContaCorrente conta = new ContaCorrente();

            conta.titular = "Gabriela";

            Console.WriteLine(conta.titular);
            Console.WriteLine(conta.saldo); /* conta.saldo sem atribuições...
            então é atribuido um valor padrão para cada tipo de variavel.
            é possivel também atribuir um outro valor padrao diretamente na classe! */
            Console.ReadLine();
        }
    }
}
