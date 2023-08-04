package br.com.alura.screenmatch.principal;

import br.com.alura.screenmatch.exceptions.ErroAnoInvalidoException;
import br.com.alura.screenmatch.modelos.Titulo;
import br.com.alura.screenmatch.modelos.TituloOmdb;
import com.google.gson.FieldNamingPolicy;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.net.URI;
import java.net.http.HttpClient;
import java.net.http.HttpRequest;
import java.net.http.HttpResponse;
import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class PrincipalComBusca {

    public static void main(String[] args) throws IOException, InterruptedException {

        Scanner sc = new Scanner(System.in);
        String busca = "";
        List<Titulo> titulos = new ArrayList<>();

        Gson gson = new GsonBuilder().setFieldNamingPolicy(FieldNamingPolicy.UPPER_CAMEL_CASE).setPrettyPrinting().create();

        while(true) {
            System.out.println("Digite um filme para buscar: ");
            busca = sc.next().replace(" ","+");

            if(busca.equalsIgnoreCase("sair")){
                break;
            }


            try {
                String endereco = "http://www.omdbapi.com/?i=tt3896198&apikey=82598853&t=" + busca;
                HttpClient client = HttpClient.newHttpClient();
                HttpRequest request = HttpRequest.newBuilder()
                        .uri(URI.create(endereco))
                        .build();


                HttpResponse<String> response = client.send(request, HttpResponse.BodyHandlers.ofString());

                //System.out.println(response.body());



                TituloOmdb meuTituloOmdb = gson.fromJson(response.body(), TituloOmdb.class);
                //System.out.println(meuTituloOmdb);


                Titulo meuTitulo = new Titulo(meuTituloOmdb);
                //System.out.println("Titulo convertido com sucesso!");
                //System.out.println(meuTitulo);
                titulos.add(meuTitulo);
                System.out.println("Titulo " + meuTitulo.getNome() + " adiconado a lista com sucesso!");


            /*
            FileWriter fw = new FileWriter("filmes.txt");
            fw.write(meuTitulo.toString());
            fw.close();
            */
            } catch (NumberFormatException ex) {
                System.out.println("Erro! : " + ex.getMessage());
            } catch (IllegalArgumentException ex) {
                System.out.println("Erro no endereço da API : " + ex.getMessage());
            } catch (ErroAnoInvalidoException ex) {
                System.out.println(ex.getMessage());
            }

        }
        System.out.println(titulos);
        System.out.println("Programa finalizado.");

        FileWriter writer = new FileWriter("filmes.json");
        writer.write(gson.toJson(titulos));
        writer.close();

    }

}
