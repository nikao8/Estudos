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
                if(CharLower(txt[i]) != 'a' && CharLower(txt[i]) != 'e' && CharLower(txt[i]) != 'i' && CharLower(txt[i]) != 'o' && CharLower(txt[i]) != 'u')
                {
                    consoantes += txt[i];
                }
            }

            return consoantes;
        }

        static char CharUpper(char c)
        {
            if(c >= 97 && c <= 122)
            {
                return Convert.ToChar(c - 32);
            }
            return c;
        }

        static char CharLower(char c)
        {
            if(c >= 65 && c <= 90)
            {
                return Convert.ToChar(c + 32);
            }
            return c;
        }
    }
}
