using System;
using System.Collections.Generic;
namespace ex2
{
    class Program
    {
        static void Main(string[] args)
        {
            int n=0; int i = 0;
            
            List<int> listaNumeros = new List<int>();
            while(i<10)
            {
                n = LeVar("Insira o numero "+ (i+1) + ": " );
                listaNumeros.Add(n);
                /*                
                if(n > maior)
                {
                    maior = n;
                    
                }*/
                

                
                i++;
            }
            listaNumeros.Sort();
            Console.WriteLine("O maior numero é: {0}\nO menor numero é {1}",listaNumeros[listaNumeros.Count - 1], listaNumeros[0]);     
        }

        static int LeVar(string mensagem)
        {
            Console.Write(mensagem);
            return Int32.Parse(Console.ReadLine());
        }
    }
}
