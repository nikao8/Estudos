import java.util.ArrayList;

public class Cliente {
    private String nome,cpf;
    private double salario;
    private ArrayList<Conta> minhasContas;

    public Cliente(){
        minhasContas = new ArrayList<Conta>();
    }
    public ArrayList<Conta> getMinhasContas(){
        return minhasContas;
    }

    public void addConta(Conta conta)
    {
        minhasContas.add(conta);
    }

    public String getNome(){
        return nome;
    }

    public void setNome(String nome){
        this.nome = nome;
    }

    public String getCpf(){
        return cpf;
    }

    public void setCpf(String cpf){
        this.cpf = cpf;
    }

    public double getSalario(){
        return salario;
    }

    public void setSalario(double salario){
        this.salario = salario;
    }
}
