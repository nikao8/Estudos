import java.util.Scanner;
import java.util.concurrent.ThreadLocalRandom;

public class Main {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        Conta conta = new Conta();

        System.out.println("Olá o número da sua conta é: " + conta.getNumero() + " preencha as informações do seu cadastro:");

        System.out.println("Insira seu nome: ");
        conta.setDono(sc.next());

        System.out.println("Insira o saldo inicial da conta: ");
        conta.setSaldo(sc.nextDouble());

        ImprimeInfoConta(conta.getNumero(), conta.getDono(), conta.getSaldo());

        int op;
        System.out.println("Deseja fazer alguma operação abaixo? ");
        System.out.println("\n1 - Depositar\n2 - Sacar");
        op = sc.nextInt();

        switch (op)
        {
            case 1:
                System.out.println("\n###############################################\nInsira o valor do depósito:");
                conta.depositar(sc.nextDouble());
                break;

            case 2:
                System.out.println("\n###############################################\nInsira o valor do saque:");
                conta.sacar(sc.nextDouble());
                break;

            default:
                System.out.println("Digito inválido.");
                break;
        }

        ImprimeInfoConta(conta.getNumero(), conta.getDono(), conta.getSaldo());

        sc.close();
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