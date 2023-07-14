package b.com.musicas.model;

public class Podcast extends Audio{
    private String apresentador;


    public String getApresentador() {
        return apresentador;
    }

    public void setApresentador(String apresentador) {
        this.apresentador = apresentador;
    }

    @Override
    public int getClassificacao(){
        if(this.getTotalCurtidas() > 500){
            return 10;
        } else {
            return 8;
        }
    }
}
