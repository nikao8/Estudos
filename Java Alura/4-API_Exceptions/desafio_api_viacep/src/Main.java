import api.ConsultaCep;
import com.google.gson.JsonSyntaxException;
import files.JsonGenerator;
import models.Endereco;

import java.io.IOException;
import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        while (true) {
            System.out.println("------ CONSULTA DE CEP ------");
            System.out.print("Insira o cep que deseja buscar (Digite sair para finalizar a consulta): ");

            String cep = sc.next();

            if(cep.equalsIgnoreCase("sair")){
                break;
            }

            try {
                Endereco end = ConsultaCep.retornaEndereco(cep);

                exibeInfoEndereco(end);

                JsonGenerator.GeraJson(end);
                System.out.println("Arquivo .json criado com sucesso! arquivo: " + end.getCep() + ".json");
            } catch (IOException | InterruptedException e) {
                System.out.println("Erro! \n" + e.getMessage());
            } catch (JsonSyntaxException e) {
                System.out.println("Não foi possivel encontrar o CEP.");
            }
        }
    }

    public static void exibeInfoEndereco(Endereco end) {
        System.out.println("Informações do endereço: ");
        System.out.println("Bairro: " + end.getBairro());
        System.out.println("Logradouro: " + end.getLogradouro());
        System.out.println("CEP: " + end.getCep());
        System.out.println("UF: " + end.getUf());
        System.out.println("Localidade: " + end.getLocalidade());
        System.out.println("Complemento: " + end.getComplemento());
    }
}