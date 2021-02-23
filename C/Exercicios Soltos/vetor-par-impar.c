#include <stdio.h>
#include <stdlib.h>

int main()
{

    int vet[15], x, i=0;

    for (i=0 ; i < 15; i++){    
    printf ("Insira o #%i numero: ", i);
    scanf ("%i", &vet[i]);
    }
    
    system ("cls || clear");

    for (i=0; i < 15; i++){
                
        if (vet[i] % 2 == 0)
        {
            printf ("vet[%i]: (%i) ", i, vet[i]);
            printf ("Par\n");
        }
        else if (vet[i] % 2 != 0)
        {
            printf ("vet[%i]: (%i) ", i, vet[i]);
            printf("Impar\n");
        }
    }
       
    return 0;
}
