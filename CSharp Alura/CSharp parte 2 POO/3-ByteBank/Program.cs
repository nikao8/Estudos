using System;

namespace _3_ByteBank
{
    class Program
    {
        static void Main(string[] args)
        {
            ContaCorrente contaDaGabriela = new ContaCorrente();
            contaDaGabriela.titular = "Gabriela";
            contaDaGabriela.numero = 863452;
            contaDaGabriela.agencia = 863;

            ContaCorrente contaDaGabrielaCosta = new ContaCorrente();
            contaDaGabrielaCosta.titular = "Gabriela";
            contaDaGabrielaCosta.numero = 863452;
            contaDaGabrielaCosta.agencia = 863;

            // tipos de referencia e valor
            // No caso de contaDaGabriela e contaDaGabrielaCosta são variáveis de referência
            // Por isso a verificação de igualdade abaixo retorna false.
            Console.WriteLine("Igualdade de tipo de referência: " + (contaDaGabriela == contaDaGabrielaCosta));

            // Diferente disso:
            int idade = 19;
            int idade2 = 19;

            Console.WriteLine("Igualdade de tipo de valor: " + (idade == idade2));
            // o que mudou é que a variavel armazenou diretamente o valor, e não a referência do valor
            // portanto, retorna true.

            contaDaGabriela.saldo = 300;
            Console.WriteLine("Saldo da conta da Gabriela: " + contaDaGabriela.saldo);
            Console.WriteLine("Saldo da conta da Gabriela Costa: " + contaDaGabrielaCosta.saldo); // vai buscar o valor padrão setado!            

            Console.ReadLine();
        }
    }
}
