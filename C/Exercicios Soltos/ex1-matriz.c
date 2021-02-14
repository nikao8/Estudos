#include <stdio.h> 
#include <stdlib.h>

int main(void)
{

int mat [3][4] = {{3,7,4,8} , {9,5,8,22} , {65,3,9,11}};

printf("A linha 0, coluna 0 = %i \n",mat[0][0]);
printf("A linha 0, coluna 1 = %i \n",mat[0][1]);
printf("A linha 0, coluna 2 = %i \n",mat[0][2]);
printf("A linha 0, coluna 3 = %i \n",mat[0][3]);

printf("\nA linha 1, coluna 0 = %i \n",mat[1][0]);
printf("A linha 1, coluna 1 = %i \n",mat[1][1]);
printf("A linha 1, coluna 2 = %i \n",mat[1][2]);
printf("A linha 1, coluna 3 = %i \n",mat[1][3]);

printf("\nA linha 2, coluna 0 = %i \n",mat[2][0]);
printf("A linha 2, coluna 1 = %i \n",mat[2][1]);
printf("A linha 2, coluna 2 = %i \n",mat[2][2]);
printf("A linha 2, coluna 3 = %i \n",mat[2][3]);

float acumulador = ((mat[0][3] + mat[1][3] + mat[2][3])/3);
printf("\nA soma da ultima coluna da matriz =  %f ", acumulador);


return 0;
}