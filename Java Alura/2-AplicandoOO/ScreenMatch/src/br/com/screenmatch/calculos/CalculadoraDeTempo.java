package br.com.screenmatch.calculos;

import br.com.screenmatch.model.Titulo;

public class CalculadoraDeTempo {
    private int tempoTotal;

    public int getTempoTotal() {
        return tempoTotal;
    }

    public void inclui(Titulo t) {
        tempoTotal += t.getDuracaoMinutos();
    }
}
