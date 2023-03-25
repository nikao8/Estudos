import java.util.Scanner;
import java.util.concurrent.ThreadLocalRandom;

public class Main {
    public static void main(String[] args) {

        Scanner sc = new Scanner(System.in);
        /*
        System.out.println("Informe o tipo de Conta (P)oupança ou (C)onta Especial?");
        String resp = sc.next();

        Conta c = (resp.equals("P")) ? new Poupanca() : new ContaEspecial(); // o ternario nesse caso substitui o if abaixo
        /*
        if (resp.equals("P")){
            c = new Poupanca();
        }else{
            c = new ContaEspecial();
        }
        */
        /*

        System.out.println("Deposito inicial: ");
        c.depositar(sc.nextDouble());

        if(c instanceof ContaEspecial) // instance of verifica o tipo do objeto de 'c'
        {
            System.out.println("Informe o limite de crédito");
            c.setLimite(sc.nextDouble());
        }
        */
        Banco banco = new Banco();
        System.out.println("# Informe o nome do Banco");
        banco.setNome(sc.nextLine());

        System.out.println("### SysBank ###");
        System.out.println("###### MENU ######");
        System.out.println("## 1) Cadastrar Cliente");
        System.out.println("## 2) Cadastrar Conta");
        System.out.println("## 3) Realizar operações");
        System.out.println("## 4) Relatorios");
        System.out.println("## 5) Sair");
    }

    public static void ImprimeInfoConta(int numero, String dono ,double saldo)
    {
        System.out.println("\n\n###############################################\nInformações da conta:\n");
        System.out.println("Número da conta: " + numero);
        System.out.println("Proprietario da conta: " + dono);
        System.out.println("Saldo da conta: " + saldo);
        System.out.println("\n###############################################\n");

    }
}