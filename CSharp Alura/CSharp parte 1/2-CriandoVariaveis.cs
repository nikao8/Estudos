using System;

namespace _2_CriandoVariaveis
{
    class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("Executando o projeto 2 - Criando as primeiras variáveis...");

            // Declaração de variaveis inteiras:
            int idade;
            idade = 19;

            Console.WriteLine(idade);

            idade = 19 + 5;

            Console.WriteLine("O valor da variável idade é: " + idade + " anos.");

            // Declaração de variaveis decimais/pontos flutuantes:

            double salario;
            salario = 1200.0;

            Console.WriteLine("O valor da variavel salario é: " + salario + " reais.");

            salario = 15 / 2;

            Console.WriteLine("Divisao de numeros inteiros em uma variavel tipo double: " + salario);

            salario = 15.0 / 2;

            Console.WriteLine("Divisao de numeros decimais em uma variavel tipo double: " + salario);
            Console.WriteLine("Execução finalizada. Tecle enter para sair.");
            Console.ReadLine();
        }
    }
}
