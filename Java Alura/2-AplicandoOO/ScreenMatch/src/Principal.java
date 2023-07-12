import br.com.screenmatch.calculos.CalculadoraDeTempo;
import br.com.screenmatch.calculos.FiltroRecomendacao;
import br.com.screenmatch.model.Episodio;
import br.com.screenmatch.model.Filme;
import br.com.screenmatch.model.Serie;

public class Principal {
    public static void main(String[] args) {
        Filme meuFilme = new Filme();

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

        Serie breakingBad = new Serie();
        breakingBad.setNome("Breaking Bad");
        breakingBad.setAnoLancamento(2003);
        breakingBad.imprimeFichaTecnica();
        breakingBad.setTemporadas(6);
        breakingBad.setEpisodiosPorTemporada(10);
        breakingBad.setMinutosPorEpisodio(50);
        System.out.println("Duração para maratonar a serie " + breakingBad.getNome() + ": " + breakingBad.getDuracaoMinutos());

        CalculadoraDeTempo calculadora = new CalculadoraDeTempo();
        calculadora.inclui(meuFilme);
        System.out.println(calculadora.getTempoTotal());


        Filme meuFilme1 = new Filme();

        meuFilme.setNome("Vingadores ultimato");
        meuFilme.setAnoLancamento(2018);
        meuFilme.setDuracaoMinutos(210);

        meuFilme.avalia(1.5);
        meuFilme.avalia(4);
        meuFilme.avalia(7);

        calculadora.inclui(meuFilme1);

        FiltroRecomendacao filtro = new FiltroRecomendacao();

        System.out.println(filtro.filtra(meuFilme));
        System.out.println(filtro.filtra(meuFilme1));

        Episodio ep = new Episodio();
        ep.setNumero(1);
        ep.setSerie(breakingBad);
        ep.setTotalVisualizacoes(300);

        System.out.println(filtro.filtra(ep));

    }
}