using System;

namespace _10_ForEncadeado
{
    class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("Executando Projeto 10: For Encadeado\n");

            //*
            //**
            //***
            //****
            //*****
            //******
            //...

            // PRIMEIRA FORMA
            for (int contadorLinha = 0; contadorLinha < 10; contadorLinha++)
            {
                for(int contadorColuna = 0; contadorColuna < 10; contadorColuna++)
                {
                    Console.Write("*");
                    
                    if(contadorColuna >= contadorLinha)
                    {
                        break;
                    }
                    
                }
                Console.WriteLine(); // Pula linha apenas.
            }

            Console.WriteLine("\n---------------------------------------------------------\n");

            // SEGUNDA FORMA
            for (int contadorLinha = 0; contadorLinha < 10; contadorLinha++)
            {
                for (int contadorColuna = 0; contadorColuna <= contadorLinha; contadorColuna++)
                {
                    Console.Write("*");

                }
                Console.WriteLine(); // Pula linha apenas.
            }
            Console.WriteLine("\nPara finalizar a execução do programa pressione enter.");
            Console.ReadLine();
        }
    }
}
