package br.com.alura.desafio.model;

import java.util.ArrayList;
import java.util.concurrent.ThreadLocalRandom;

public class Cartao {

    private String numero;
    private double limite;
    private ArrayList<Compra> compras;


    public Cartao(double limite) {
        this.numero = generateRandomCardNumber();
        this.limite = limite;
        this.compras = new ArrayList<Compra>();
    }

    public String getNumero() {
        return numero;
    }

    public double getLimite() {
        return limite;
    }

    public ArrayList<Compra> getCompras() {
        return compras;
    }

    public boolean contabilizaCompra(Compra c){
        if(c.getPreco() > this.limite){
            return false;
        }

        this.limite -= c.getPreco();
        this.compras.add(c);
        return true;
    }

    private String generateRandomCardNumber(){
        String numero = "";
        int maxDigits = 16;

        for(int i = 0; i < maxDigits; i++){
            if(i % 4 == 0 && i != maxDigits - 1){
                numero += " ";
            }

            numero += String.valueOf(ThreadLocalRandom.current().nextInt(0, 9));
        }

        return numero;
    }
}
