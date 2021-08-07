using System;

namespace _7_CalculoPoupanca
{
    class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("Executando Projeto 7 - Calculo Poupança com laço While");

            double valorInvestido = 1000;

            int contadorMes = 0;
            while (contadorMes < 12)
            {
                contadorMes++;
                valorInvestido += valorInvestido * 0.0036;
                Console.WriteLine("Após " + contadorMes + " meses você terá R$" + valorInvestido);
            }


            Console.WriteLine("Para finalizar a execução do programa pressione enter. ");
            Console.ReadLine();
        }
    }
}
