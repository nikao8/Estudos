using System;

namespace _8_For
{
    class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("Executando Projeto 8: Calculo poupança com laço For");

            double valorInvestido = 1000;

            for(int contadorMes = 1; contadorMes <= 12; contadorMes++)
            {
                valorInvestido *= 1.0036;
                Console.WriteLine("Após " + contadorMes + " meses, você terá R$" + valorInvestido);

            }

            Console.WriteLine("Para finalizar a execução do programa pressione enter.");
            Console.ReadLine();
        }
    }
}
