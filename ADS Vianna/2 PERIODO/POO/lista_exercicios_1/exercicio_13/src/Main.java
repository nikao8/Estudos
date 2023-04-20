import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Jogo jogo = new Jogo();
        Scanner sc = new Scanner(System.in);

        while(jogo.verificaTermino() == 0) {
            jogadaJogador1(jogo);
            jogadaJogador2(jogo);
        }

        jogo.getTabuleiro().exibeTabuleiro();

        if(jogo.getJogador1().isVencedor()){
            System.out.println("Jogador [1] é o vencedor.");
        }

        if(jogo.getJogador2().isVencedor()){
            System.out.println("Jogador [2] é o vencedor.");
        }

        if(jogo.verificaTermino() == 2){
            System.out.println("# Empate #.");
        }
    }
    /*
    public static int verificaTermino(Jogo jogo){
        if(jogo.getTabuleiro().getnJogada() >= 9 && jogo.verificaResultado() == 0){
            return 2;
        }
        return jogo.verificaResultado();
    }*/

    public static void jogadaJogador1(Jogo jogo){
        Scanner sc = new Scanner(System.in);

        if(jogo.verificaTermino() == 0){
            System.out.println("\nJogador [1] é a sua vez de jogar: " );
            jogo.getTabuleiro().exibeTabuleiro();

            int linha1, coluna1;
            System.out.print("Insira a linha da jogada (0-2):");
            linha1 = sc.nextInt();
            System.out.print("Insira a coluna da jogada (0-2):");
            coluna1 = sc.nextInt();

            jogo.getTabuleiro().realizaJogada(linha1,coluna1,jogo.getJogador1().getSimbolo());
        }
    }

    public static void jogadaJogador2(Jogo jogo){
        Scanner sc = new Scanner(System.in);

        if(jogo.verificaTermino() == 0){
            System.out.println("\nJogador [2] é a sua vez de jogar: " );
            jogo.getTabuleiro().exibeTabuleiro();

            int linha2, coluna2;
            System.out.print("Insira a linha da jogada (0-2):");
            linha2 = sc.nextInt();
            System.out.print("Insira a coluna da jogada (0-2):");
            coluna2 = sc.nextInt();

            jogo.getTabuleiro().realizaJogada(linha2,coluna2,jogo.getJogador2().getSimbolo());
        }
    }
}