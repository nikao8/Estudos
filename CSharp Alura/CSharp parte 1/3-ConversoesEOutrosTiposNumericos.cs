using System;

namespace _3_ConversõesEOutrosTiposNumericos
{
    class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("Executando o projeto 3 - Manipulação de variáveis...");

            double salario = 1200.50;

            int salarioInteiro = (int)salario; // Realizando casting de variavel, double -> inteiro

            Console.WriteLine(salarioInteiro);

            long idade = 13000000000; // Diferente do tipo int, que só recebe valores de no maximo 32 bits, o tipo long suporta valores inteiros porém valores muito maiores que o int suporta!.
            
            Console.WriteLine(idade);
            
            short quantidadeProdutos = 1500; // O tipo short é o oposto do tipo long, ele armazena na memoria apenas 16 bits, usa-se quando a variavel não vai receber valores muito grandes.
            
            Console.WriteLine(quantidadeProdutos);

            float altura = 1.80f; // Com o tipo float também é possivel alocar valores decimais, porém ele tem uma precisão de casas depois da virgula menor do que o tipo double.
            // É necessario colocar o sufico 'f' para variaveis tipo float, assim como no exemplo da variavel altura. 

            Console.WriteLine(altura);

            Console.WriteLine("Pressione enter para finalizar a execução do programa");
            Console.ReadLine();
        }
    }
}
