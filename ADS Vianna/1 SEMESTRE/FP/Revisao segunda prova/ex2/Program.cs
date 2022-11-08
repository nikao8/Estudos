using System;

namespace ex2
{
    class Program
    {
        static void Main(string[] args)
        {
            Console.Write("insira o texto: ");
            string txt = Console.ReadLine();

            Console.Write("O texto somente com consoantes é: {0}", Consoantes(txt));
        }

        static string Consoantes(string txt)
        {
            string consoantes = "";
            for(int i = 0; i < txt.Length; i++)
            {
                if(txt[i] != 'a' && txt[i] != 'e' && txt[i] != 'i' && txt[i] != 'o' && txt[i] != 'u')
                {
                    consoantes += txt[i];
                }
            }

            return consoantes;
        }
    }
}
