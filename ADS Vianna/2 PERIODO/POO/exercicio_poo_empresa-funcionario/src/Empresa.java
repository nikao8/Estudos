public class Empresa {

    private double valorPagamentoFuncionarios;
    public Empresa()
    {
    }

    public double getValorPagamentoFuncionarios()
    {
        return valorPagamentoFuncionarios;
    }
    public void setValorPagamentoFuncionarios(double valorPagamentoFuncionarios)
    {
        this.valorPagamentoFuncionarios = valorPagamentoFuncionarios;
    }
    public double RetornaSalarioFuncionarios(double[] salarios)
    {
        double valorTotal = 0;
        for(int i = 0; i < salarios.length; i++ )
        {
            valorTotal += salarios[i];
        }
        return valorTotal;
    }

}
