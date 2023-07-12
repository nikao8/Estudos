package br.com.screenmatch.calculos;

import br.com.screenmatch.model.Titulo;

public class FiltroRecomendacao {
    private String recomendacao;

    public String filtra(Classificavel classificavel) {
        if(classificavel.getClassificacao() >= 4) {
            //System.out.println("Está entre os preferidos do momento");
            recomendacao = "Está entre os preferidos do momento";
        } else if(classificavel.getClassificacao() >= 2) {
            //System.out.println("Muito bem avaliado no momento!");
            recomendacao = "Muito bem avaliado no momento!";
        } else {
            //System.out.println("Coloque na sua lista para assistir depois");
            recomendacao = "Coloque na sua lista para assistir depois";
        }

        return recomendacao;
    }
}
