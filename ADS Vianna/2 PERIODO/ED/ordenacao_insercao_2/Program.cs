var vet = new int[] {4,1,3,2,5,7,6,9,8}; 

OrdenarPorIsercao(vet);

for(int i = 0; i < vet.Length; i++)
{
    Console.Write($"{vet[i]} ");
}

void OrdenarPorIsercao(int[] vet)
{
    int pos, aux;

    for(int corte = 0; corte < vet.Length - 1; corte++)
    {
        pos = corte + 1;
        aux = vet[pos];

        while(pos > 0 && vet[pos - 1] > aux)
        {
            vet[pos] = vet[pos - 1];
            pos--;
        }

        vet[pos] = aux;
    }
}