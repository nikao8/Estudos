import java.util.concurrent.ThreadLocalRandom;

public class Conta {
    private int numero; // não é criado um set, pois o numero é gerado randomicamente 1x na abertura da conta
    private String dono;
    protected double saldo; //protected é public para a propria classe e as classes filhas apenas
    private Banco banco;
    private Cliente correntista;

    public Conta()
    {
        this.numero = ThreadLocalRandom.current().nextInt(1, 2147483646);
    }

    public int getNumero()
    {
        return this.numero;
    }

    public String getDono()
    {
        return this.dono;
    }
    public void setDono(String dono)
    {
        this.dono = dono;
    }

    public double getSaldo()
    {
        return this.saldo;
    }

    public void setSaldo(double saldo)
    {
            this.saldo = saldo;
    }

    public void depositar(double valorDeposito)
    {
        if(valorDeposito > 0) {
            saldo += valorDeposito;
        }
    }

    public void setCorrentista(Cliente correntista){
        this.correntista = correntista;
    }

    public Cliente getCorrentista( ){
        return correntista;
    }

    public void setBanco(Banco banco){
        this.banco = banco;
    }

    public Banco getBanco( ){
        return banco;
    }   

    public void sacar(double valorSaque)
    {
        if(valorSaque > 0 && valorSaque <= saldo)
        {
            saldo -= valorSaque;
        }
    }
}
