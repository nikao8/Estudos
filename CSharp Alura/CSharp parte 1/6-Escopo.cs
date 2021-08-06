using System;

namespace _7_Condicionais
{
    class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("Executando projeto 6 - Escopo !");

            int idadeJoao = 16;
            int qtdPessoas = 2;
         
            bool acompanhado = qtdPessoas >= 2;
            string msg;

            if (acompanhado == true)
            {
                // Declarando a mensagem aqui, ele entra em um escopo local
                // e nao pode ser usada em outro bloco de codigo
                //string msg = ", João esta acompanhado";
                
                msg = ", João esta acompanhado";
            }
            else
            {
                msg = "";
            }

            if (idadeJoao >= 18 || acompanhado == true)
            {
                Console.WriteLine("João pode entrar" + msg);
            }
            else
            {
                Console.WriteLine("João não pode entrar." + msg);
            }

            Console.WriteLine("Pressione enter para finalizar a execução do programa");
            Console.ReadLine();
        } 
    }
}
