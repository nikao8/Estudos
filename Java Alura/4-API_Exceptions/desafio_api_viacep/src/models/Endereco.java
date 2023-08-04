package models;

public class Endereco {
    private String logradouro;
    private String complemento;
    private String uf;
    private String cep;
    private String bairro;
    private String localidade;


    public Endereco(String logradouro, String complemento, String uf, String cep, String bairro, String localidade) {
        this.logradouro = logradouro;
        this.complemento = complemento;
        this.uf = uf;
        this.cep = cep;
        this.bairro = bairro;
        this.localidade = localidade;
    }

    public String getLogradouro() {
        return logradouro;
    }

    public String getComplemento() {
        return complemento;
    }

    public String getUf() {
        return uf;
    }

    public String getCep() {
        return cep;
    }

    public String getBairro() {
        return bairro;
    }

    public String getLocalidade() {
        return localidade;
    }
}
