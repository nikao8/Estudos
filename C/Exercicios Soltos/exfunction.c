#include <stdio.h>
#include <stdlib.h>

int mednota(int n1,int n2,int n3)
{
    float med;
    med = (n1 + n2 + n3)/3;
    return med;
}

void main()
{
    int n1,n2,n3;
    
    printf ("insira suas 3 notas em seguida: \n");
    scanf ("%i", &n1);
    scanf ("%i", &n2);
    scanf ("%i", &n3);

    printf ("A media eh: %i" ,mednota(n1,n2,n3));
}