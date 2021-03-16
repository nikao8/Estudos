#include <stdio.h>
#include <stdlib.h>

struct cadastro 
{
    char nome[50],endereco[150];
    int idade;
}user;

int main ()
{
    
    printf ("\nInsira o seu nome a seguir: ");
    fgets (user.nome,50,stdin);
    setbuf(stdin,NULL);

    printf ("\nInsira a sua idade: ");
    scanf ("%i", &user.idade);

    printf ("\nInsira a rua em que voce mora atualmente:");
    setbuf(stdin,NULL);
    fgets(user.endereco,150,stdin);
    setbuf(stdin,NULL);

    printf ("\n-----------------------------------------------\n");
    printf ("Seu nome: %s",user.nome); 
    printf ("Sua idade: %i",user.idade);
    printf ("\nSeu endereco: %s",user.endereco);
    printf ("-----------------------------------------------\n");
    
    return 0;
}