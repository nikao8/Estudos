import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Jogo jogo = new Jogo();
        Scanner sc = new Scanner(System.in);

        do {
            jogadaJogador1(jogo);
            jogadaJogador2(jogo);
        }while(jogo.verificaResultado() == false);

        if(jogo.getJogador1().isVencedor()){
            System.out.println("Jogador [1] é o vencedor.");
        }

        if(jogo.getJogador2().isVencedor()){
            System.out.println("Jogador [2] é o vencedor.");
        }
    }

    public static void jogadaJogador1(Jogo jogo){
        Scanner sc = new Scanner(System.in);

        System.out.println("\nJogador [1] é a sua vez de jogar: " );
        jogo.getTabuleiro().exibeTabuleiro();

        int linha1, coluna1;
        System.out.print("Insira a linha da jogada (0-2):");
        linha1 = sc.nextInt();
        System.out.print("Insira a coluna da jogada (0-2):");
        coluna1 = sc.nextInt();

        jogo.getTabuleiro().realizaJogada(linha1,coluna1,jogo.getJogador1().getSimbolo());
        /*
        if(jogo.getTabuleiro().realizaJogada(linha1,coluna1,jogo.getJogador1().getSimbolo()) == false);
        {
            jogadaJogador1(jogo);
        }*/
    }

    public static void jogadaJogador2(Jogo jogo){
        Scanner sc = new Scanner(System.in);

        System.out.println("\nJogador [2] é a sua vez de jogar: " );
        jogo.getTabuleiro().exibeTabuleiro();

        int linha2, coluna2;
        System.out.print("Insira a linha da jogada (0-2):");
        linha2 = sc.nextInt();
        System.out.print("Insira a coluna da jogada (0-2):");
        coluna2 = sc.nextInt();

        jogo.getTabuleiro().realizaJogada(linha2,coluna2,jogo.getJogador2().getSimbolo());
        /*
        if(jogo.getTabuleiro().realizaJogada(linha2,coluna2,jogo.getJogador2().getSimbolo()) == false);
        {
            jogadaJogador2(jogo);
        }*/
    }


}