using System;

namespace _4_CaracteresETextos
{
    class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("Executando o projeto 4 - Caracteres e textos");

            char primeiraLetra = 'a';// Armazena apenas 1 caractere. aspas simples '' para um caractere & aspas duplas "" para uma string/texto
            //Armazena apenas 16 bits

            Console.WriteLine(primeiraLetra);

            primeiraLetra = (char)65; // Dessa forma o numero 65 é representação numérica da letra 'A', de acordo com a ASCII table.
            
            Console.WriteLine(primeiraLetra);

            primeiraLetra = (char)(primeiraLetra + 1);

            Console.WriteLine(primeiraLetra);

            string titulo = "Teste variavel do tipo string..."; // Nota: para texto usa-se aspas duplas "".

            Console.WriteLine(titulo);

            titulo = "Idade = " + 19; // Concatenando ao texto.

            Console.WriteLine(titulo);

            string listinha = "- Item1\n- Item2\n- Item3\n- Item4"; // Utilizando quebra de linha

            Console.WriteLine(listinha);
            
            Console.WriteLine("Pressione enter para finalizar a execução do programa...");
            Console.ReadLine();
        }
    }
}
