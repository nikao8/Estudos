package b.com.musicas.model;

public class MinhasPreferidas {

    public String inclui(Audio a){
        if(a.getClassificacao() >= 9){
            return a.getTitulo() + " é considerado um sucesso!";
        } else {
            return "Boa opção para escutar em algum momento";
        }
    }

}
