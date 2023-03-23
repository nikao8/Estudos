public class Poupanca extends Conta{

    public Poupanca(){
        //caso não houvesse construtor vazio teria que ser feito:
        //super("",0); //super representa a classe Conta(pai), no caso especificamos o construtor da conta
    }
    public void rendimento(){
        //depositar(getSaldo() * 0.002); // metodo sem o protected no atributo saldo da Conta
        saldo *= 1.002; // funciona somente no protected no atributo saldo
    }
}
