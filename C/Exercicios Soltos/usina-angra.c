#include <stdio.h>
#include <stdlib.h>
#include <locale.h>
#include <windows.h>

int main()
{
    // Define o valor das páginas de código UTF8 e default do Windows
    UINT CPAGE_UTF8 = 65001;
    UINT CPAGE_DEFAULT = GetConsoleOutputCP();
    // Define codificação como sendo UTF-8
    SetConsoleOutputCP(CPAGE_UTF8);    
        
    int timer = 0; 
    float min=0, x;
     
    printf ("Digite a massa do elemento: ");
    scanf ("%f", &x);

    while (x > 0.10)
    {
        x = x - (x*0.25);
        timer += 30; 
    }
    
    system ("cls");
    printf ("O tempo de perda de massa até 0.10 é de: %i segundos.", timer);
       
    min = timer/60;
    printf ("\n\nO tempo de perda de massa ate 0.10 em minutos é de: %.2f minutos.", min);
  
    return 0;
}