package api;

import com.google.gson.Gson;
import com.google.gson.JsonSyntaxException;
import models.Endereco;

import models.Endereco;

import java.io.IOException;
import java.net.URI;
import java.net.http.HttpClient;
import java.net.http.HttpRequest;
import java.net.http.HttpResponse;

public class ConsultaCep {

    public static Endereco retornaEndereco(String cep) throws IOException, InterruptedException, JsonSyntaxException {

        URI endereco = URI.create("https://viacep.com.br/ws/" + cep + "/json/");

        HttpClient client = HttpClient.newHttpClient();
        HttpRequest request = HttpRequest.newBuilder().uri(endereco).build();

        HttpResponse<String> response = HttpClient.newHttpClient().send(request, HttpResponse.BodyHandlers.ofString());

        return new Gson().fromJson(response.body(), Endereco.class);
    }
}
