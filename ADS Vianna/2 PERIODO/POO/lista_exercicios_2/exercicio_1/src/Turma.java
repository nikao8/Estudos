import java.util.ArrayList;

public class Turma {
    private ArrayList<Aluno> alunos;
    private Aluno alunoGanhador;


    public Turma(){
        alunoGanhador = new Aluno();
        alunos = new ArrayList<Aluno>();
    }

    public ArrayList<Aluno> getAlunos() {
        return alunos;
    }

    public void setAlunos(ArrayList<Aluno> alunos) {
        this.alunos = alunos;
    }

    public Aluno getAlunoGanhador() {
        return alunoGanhador;
    }

    public void setAlunoGanhador(Aluno alunoGanhador) {
        this.alunoGanhador = alunoGanhador;
    }

    public void adicionaAluno(Aluno aluno)
    {
        alunos.add(aluno);
    }

    public Aluno calculaMaisVotado()
    {
        int maiorQtdVotos = 0;
        int qtdVotosTotal = 0;
        //Aluno vencedor = new Aluno();
        for (Aluno a : alunos)
        {
            if(a.getQtdVotos() >= maiorQtdVotos)
            {
                maiorQtdVotos = a.getQtdVotos();

            }
            qtdVotosTotal += a.getQtdVotos();
        }

        for (Aluno a: alunos)
        {
            if(a.getQtdVotos() == maiorQtdVotos){
                
            }
        }


        return vencedor;
    }
}
