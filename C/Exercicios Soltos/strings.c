#include <stdio.h> 
#include <stdlib.h>
#include <string.h>

int main()
{
    char str1[20]= "Hello World", str2[20];
    int i=0;

    for (i=0; str1[i] != '\0'; i++)
    {
        str2[i] = str1[i];       
    }    
    
    str2[i] = '\0';

    printf ("%s", str2);

    return 0;
}



