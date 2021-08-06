using System;

namespace _7_Condicionais
{
    class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("Executando projeto 5 - Condicionais!");

            int idadeJoao = 16;
            int qtdPessoas = 2;

            bool acompanhado = qtdPessoas >= 2;

            if(idadeJoao >= 18 && acompanhado == true)
            {
                Console.WriteLine("João pode entrar");
            }
            else
            {
                Console.WriteLine("João não pode entrar.");
            }

            Console.WriteLine("Pressione enter para finalizar a execução do programa");
            Console.ReadLine();
        } 
    }
}
