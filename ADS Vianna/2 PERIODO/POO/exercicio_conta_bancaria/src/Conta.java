import java.util.concurrent.ThreadLocalRandom;

public class Conta {
    private int numero; // não é criado um set, pois o numero é gerado randomicamente 1x na abertura da conta
    private String dono;
    private double saldo;

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
        saldo += valorDeposito;
    }

    public boolean sacar(double valorSaque)
    {
        if(valorSaque > saldo)
        {
            return false;
        }
        else
        {
            saldo -= valorSaque;
            return true;
        }
    }

}
