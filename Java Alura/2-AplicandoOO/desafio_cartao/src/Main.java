import br.com.alura.desafio.model.Cartao;
import br.com.alura.desafio.model.Compra;

import java.util.Collections;
import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        System.out.println("Digite o limite do cartão: ");
        Cartao card = new Cartao(sc.nextDouble());

        while (true) {
            System.out.println("COMPRAS PARA O CARTAO DE NUMERO: " + card.getNumero());

            Compra comp = new Compra();

            System.out.println("Insira o nome do produto: ");
            comp.setNome(sc.next());

            System.out.println("Insira o preco do produto: ");
            comp.setPreco(sc.nextDouble());



            if(!card.contabilizaCompra(comp)) {
                System.out.println("Cartão sem limite para compra.\nFinalizando a execução do programa.");
                break;
            } else {
                System.out.println("Compra efetuada com sucesso!\nLimite disponivel: " + card.getLimite());
            }

            System.out.println("Deseja continuar comprando? 1-SIM | 2-NÃO");
            if(!sc.next().equals("1")){
                break;
            }
        }


        exibeCompras(card);
    }

    private static void exibeCompras(Cartao c) {
        Collections.sort(c.getCompras());
        System.out.println("--------- COMPRAS DO CARTÃO Nº " + c.getNumero() + " ---------");
        for (Compra comp: c.getCompras()) {
            System.out.println("Produto: " + comp.getNome() + " - Preço: " + comp.getPreco());
        }
    }
}