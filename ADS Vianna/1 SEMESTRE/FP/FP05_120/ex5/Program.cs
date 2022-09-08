using System;

namespace ex5
{
    class Program
    {
        static void Main(string[] args)
        {
            int potencia = 0;
            double s = 0;
            
            for(int divisor = 50; divisor >= 2; divisor = divisor - 2)
            {
                
                if(divisor == 50)
                {
                    s = s + (2 / divisor); 
                }
                else
                {
                    s = s + (Math.Pow(2,potencia) / divisor); 
                }
                
                potencia++;
            }

            Console.WriteLine("O valor de S é: {0:N2}", s);
        }
    }
}
