public class Tabuleiro {
    private int[][] tabuleiro;
    private int nJogada;
    private boolean fim;

    public Tabuleiro(){
        tabuleiro = new int[3][3];
        zerarTabuleiro();
        nJogada = 0;
        fim = false;

    }

    public void realizaJogada(int linha, int coluna,int simbolo){
        if(tabuleiro[linha][coluna] == 0){
            tabuleiro[linha][coluna] = simbolo;
            setnJogada();
            //return true;
        }/*
        else{
            System.out.println("Posição já ocupada, realize outra jogada.");
            return false;
        }*/
    }

    public int verificaJogo(){
        for(int i = 0; i < 3; i++){
            // verifica linha
            if(tabuleiro[i][0] + tabuleiro[i][1] + tabuleiro[i][2] == 3){
                return 1;
            }

            if(tabuleiro[i][0] + tabuleiro[i][1] + tabuleiro[i][2] == 6){
                return 2;
            }
            // verifica colunas
            if( (tabuleiro[0][i] + tabuleiro[1][i] + tabuleiro[2][i]) == 3){
                return 1;
            }

            if( (tabuleiro[0][i] + tabuleiro[1][i] + tabuleiro[2][i]) == 6){
                return 2;
            }
            // verifica diagonais
            if( (tabuleiro[0][0] + tabuleiro[1][1] + tabuleiro[2][2]) == 3){
                return 1;
            }

            if( (tabuleiro[0][0] + tabuleiro[1][1] + tabuleiro[2][2]) == 6){
                return 2;
            }

            if( (tabuleiro[0][2] + tabuleiro[1][1] + tabuleiro[2][0]) == 3){
                return 1;
            }

            if( (tabuleiro[0][2] + tabuleiro[1][1] + tabuleiro[2][0]) == 6){
                return 2;
            }
        }
        return 0;
    }
    public void zerarTabuleiro(){
        for(int linha=0 ; linha<3 ; linha++){
            for(int coluna=0 ; coluna<3 ; coluna++){
                tabuleiro[linha][coluna]=0;
            }
        }
    }

    public void exibeTabuleiro(){
        for(int linha=0 ; linha<3 ; linha++){
            for(int coluna=0 ; coluna<3 ; coluna++){

                if(tabuleiro[linha][coluna]==1){
                    System.out.print(" X ");
                }
                if(tabuleiro[linha][coluna]==2){
                    System.out.print(" O ");
                }
                if(tabuleiro[linha][coluna]==0){
                    System.out.print("   ");
                }

                if(coluna==0 || coluna==1)
                    System.out.print("|");
            }
            System.out.println();
        }
    }

    public int getnJogada() {
        return nJogada;
    }

    public void setnJogada() {
        this.nJogada++;
    }
}
