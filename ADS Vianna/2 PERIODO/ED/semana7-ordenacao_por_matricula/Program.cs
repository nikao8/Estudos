var alunos = new Aluno[]
{
    new Aluno { Matricula = 200, Nome = "Bruno" },
    new Aluno { Matricula = 100, Nome = "Ana" },
    new Aluno { Matricula = 300, Nome = "Carlos" },
    new Aluno { Matricula = 500, Nome = "Eva" },
    new Aluno { Matricula = 400, Nome = "Daniel" }
};

OrdenarPorInsercao(alunos);

/* // Comparar por string
string s1 = "Ana", s2 = "Bruno";

if (s1.CompareTo(s2) > 0)
{
    var aux = s1;
    s1 = s2;
    s2 = aux;
}
*/

foreach (var obj in alunos)
{
    Console.WriteLine($"{obj.Matricula} - {obj.Nome}");
}

void OrdenarPorInsercao(Aluno[] vet)
{
    int pos;
    Aluno aux;

    for (int corte = 0; corte < vet.Length - 1; corte++)
    {
        pos = corte + 1;
        aux = vet[pos];

        while (pos > 0 && vet[pos - 1].Matricula > aux.Matricula)
        {
            vet[pos] = vet[pos - 1];
            pos--;
        }
        
        vet[pos] = aux;
    }
}

/*
var vet = new int[] {4, 1, 3, 2, 5, 7, 6, 9, 8};

//OrdenarPorInsercao(vet);
OrdenarPorSelecao(vet);

for (int i = 0; i < vet.Length; i++)
{
    Console.Write($"{vet[i]}  ");
}

void OrdenarPorSelecao(int[] vet)
{
    int indiceMenor;

    for (int pos = 0; pos < vet.Length - 1; pos++)
    {
        indiceMenor = pos;

        for (int i = pos + 1; i < vet.Length; i++)
            if (vet[i] < vet[indiceMenor])
                indiceMenor = i;
        
        if (pos != indiceMenor)
            Trocar(vet, pos, indiceMenor);
    }
}

void Trocar(int[] vet, int i, int j)
{
    var aux = vet[i];
    vet[i] = vet[j];
    vet[j] = aux;
}

void OrdenarPorInsercao(int[] vet)
{
    int pos, aux;

    for (int corte = 0; corte < vet.Length - 1; corte++)
    {
        pos = corte + 1;
        aux = vet[pos];

        while (pos > 0 && vet[pos - 1] > aux)
        {
            vet[pos] = vet[pos - 1];
            pos--;
        }
        
        vet[pos] = aux;
    }
}
*/