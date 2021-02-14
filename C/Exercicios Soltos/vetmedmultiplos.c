#include <stdio.h>
#include <stdlib.h>

int main()
{
int n=0;

printf("Qual o limite voce deseja ? ");
scanf("%i", &n);
printf ("\nOs multiplos de 10 entre 0 e %i sao: \n", n);

int i;

for (i = 0; i < n; i++)
    {
        if (i % 10 == 0){

        printf("\n%i", i);
    
        }
    
    
    }   

return 0;    
}