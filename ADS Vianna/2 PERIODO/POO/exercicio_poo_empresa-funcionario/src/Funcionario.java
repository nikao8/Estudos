public class Funcionario {
    double salarioBruto;
    boolean valeTransporte;
    boolean trabalhadorNoturno;
    int qtdFilhos;

    public Funcionario(double salarioBruto, boolean valeTransporte, boolean trabalhadorNoturno, int qtdFilhos)
    {
        this.salarioBruto = salarioBruto;
        this.valeTransporte = valeTransporte;
        this.trabalhadorNoturno = trabalhadorNoturno;
        this.qtdFilhos = qtdFilhos;
    }

    public double CalculaSalarioBruto(/*double salarioBruto, boolean valeTransporte, boolean trabalhadorNoturno, int qtdFilhos*/)
    {
        double salarioFinal = salarioBruto - (salarioBruto * 0.13);

        if(valeTransporte)
        {
            salarioFinal = salarioFinal - (salarioBruto * 0.06);
        }

        if(trabalhadorNoturno)
        {
            salarioFinal = salarioFinal + (salarioBruto * 0.05);
        }

        if(qtdFilhos > 3)
        {
            salarioFinal = salarioFinal + 150.0;
        }
        else
        {
            salarioFinal = salarioFinal + (qtdFilhos * 50.0);
        }

        return salarioFinal;
    }

}
