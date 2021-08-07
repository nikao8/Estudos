using System;

namespace _9_CalculoInvestimentoLongoPrazo
{
    class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("Executando Projeto 9: Calculo Investimento Longo Prazo - For Encadeado");

            double fatorRendimento = 1.0036;
            double valorInvestido = 1000;

            for(int contadorAno = 1; contadorAno <= 5; contadorAno++)
            {
                for(int contadorMes = 1; contadorMes <= 12; contadorMes++)
                {
                    valorInvestido *= fatorRendimento;
                }
                
                fatorRendimento += 0.0010;
                Console.WriteLine("No " + contadorAno + " ano, o valor é de: "+ valorInvestido);
            }

            Console.WriteLine("\nAo término do investimento o valor é de:" + valorInvestido);

            Console.WriteLine("\nPara finalizar a execução do programa pressione enter.");
            Console.ReadLine();
        }
    }
}
