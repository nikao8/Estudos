public class Jogo {
    private Tabuleiro tabuleiro;
    private Jogador jogador1;
    private Jogador jogador2;
    private int[] tentativas;

    public Jogo(){
        tabuleiro = new Tabuleiro();
        jogador1 = new Jogador(1);
        jogador2 = new Jogador(2);
        tentativas = new int[9];
    }

    public boolean verificaResultado(){
        if(tabuleiro.verificaJogo() == 1){
            jogador1.setVencedor(true);
            return true;
        }
        if(tabuleiro.verificaJogo() == 2){
            jogador2.setVencedor(true);
            return true;
        }
        return false;
    }
    public Tabuleiro getTabuleiro() {
        return tabuleiro;
    }

    public Jogador getJogador1() {
        return jogador1;
    }

    public void setJogador1(Jogador jogador1) {
        this.jogador1 = jogador1;
    }

    public Jogador getJogador2() {
        return jogador2;
    }

    public void setJogador2(Jogador jogador2) {
        this.jogador2 = jogador2;
    }

    public int[] getTentativas() {
        return tentativas;
    }

    public void setTentativas(int[] tentativas) {
        this.tentativas = tentativas;
    }
}
