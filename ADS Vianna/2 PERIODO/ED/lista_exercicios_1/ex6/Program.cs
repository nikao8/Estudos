internal class Program
{
    private static void Main(string[] args)
    {
        Console.WriteLine("Insira o numero para descobrir seu fatorial: ");
        int numero = Convert.ToInt32(Console.ReadLine());

        Console.WriteLine("Soma dos numeros anteriores a {0} é: {1}", numero, Soma(numero));
    }

    static int Soma(int num)
    {
        if(num > 0)
        {
            return num + Soma(num - 1);
        }
        else
        {
            return 0;
        }
    }
}