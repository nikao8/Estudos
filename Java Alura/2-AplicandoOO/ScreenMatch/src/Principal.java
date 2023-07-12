import br.com.screenmatch.model.Filme;

public class Principal {
    public static void main(String[] args) {
        Filme meuFilme = new Filme();

        /*
        meuFilme.nome = "Corações de ferro";
        meuFilme.anoLancamento = 2015;
        meuFilme.duracaoMinutos = 160;
        */
        meuFilme.setNome("Corações de ferro");
        meuFilme.setAnoLancamento(2015);
        meuFilme.setDuracaoMinutos(160);

        meuFilme.imprimeFichaTecnica();
        meuFilme.avalia(6);
        meuFilme.avalia(3.5);
        meuFilme.avalia(10);

        /*
        System.out.println("Soma avaliações:" + meuFilme.somaAvaliacoes);
        System.out.println("Total de avaliações: " + meuFilme.totalAvaliacoes);
        System.out.println("Media avaliações: " + meuFilme.mediaAvaliacoes());
        */

        System.out.println("Soma avaliações:" + meuFilme.getSomaAvaliacoes());
        System.out.println("Total de avaliações: " + meuFilme.getTotalAvaliacoes());
        System.out.println("Media avaliações: " + meuFilme.mediaAvaliacoes());


    }
}