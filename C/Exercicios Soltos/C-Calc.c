#include <stdio.h>
#include <stdlib.h>

int main()
{
    char op;
    float n1,n2;
    int menu;

    printf ("Insira sua operacao seguindo os exemplos: (Utilize os espacos entre operadores assim como no exemplo!)\n\n[Exemplo de soma] 1 + 3\n[Exemplo de subtracao] 5 - 2\n[Exemplo multiplicacao] 3 * 5\n[Exemplo divisao] 10 / 2\n\n-> ");
    scanf("%f", &n1);
    scanf("%s", &op);
    scanf("%f", &n2);

    switch (op)
    {
        case '+':
            printf("\n\nResultado: %.2f ", n1 + n2);
        break;

        case '-':
            printf("\n\nResultado: %.2f ", n1 - n2);
        break;

        case '*':
            printf("\n\nResultado: %.2f ", n1 * n2);
        break;

        case '/':
            if(n2 != 0)
            {
            printf("\n\nResultado: %.2f ", n1 / n2);
            }
            else
            {
            printf("Divisao inexistente!\n\n");
            }
        break;        
           
        default:
            printf("Nao reconhecido!. refaca a operacao.\n\n");
            return main();
        break;            
        }        

        printf ("\n\nSelecione uma das opcoes:\n\n[1]Sair\n[2]Novo calculo\n\n-> ");
        scanf ("%i", &menu);
        
        switch (menu){
            case 1:
                system ("cls || clear");
                printf("Fechando o programa...");
                system ("exit");
            break;

            case 2:
                system ("cls || clear");
                return main();
            break;

            default:
                system ("cls || clear");
                
                do{
                    system ("cls || clear");
                    printf ("Selecione uma das opcoes:\n\n[1]Sair\n[2]Novo calculo\n\n-> ");
                    scanf ("%i", &menu);

                    if (menu == 1)
                    {
                        system ("cls");
                        printf ("Fechando o programa...");
                        system ("exit");
                    }
                    else if (menu == 2)
                    {
                        system ("cls || clear");
                        return main();        
                    }
                                    
                }while (menu != 1 && 2);         
            break;
        }
        
    return 0;
}