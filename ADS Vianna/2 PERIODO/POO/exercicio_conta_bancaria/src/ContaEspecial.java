public class ContaEspecial extends Conta{
    private double limite;
    public ContaEspecial(){
        //caso não houvesse construtor vazio teria que ser feito:
        //super("",0);
    }

    public void setLimite(double limite){
        this.limite = limite;
    }
    public double getLimite(){
        return limite;
    }

    @Override // sobrescrevo o metodo sacar da classe Conta
    public void sacar(double valorSaque)
    {
        if(valorSaque > 0 && valorSaque <= (saldo+limite)){
            saldo -= valorSaque;
        }
    }
}
