package br.com.alura.screenmatch.exceptions;

public class ErroAnoInvalidoException extends RuntimeException {
    private String mensagem;

    public ErroAnoInvalidoException(String mensagem) {
        this.mensagem = mensagem;
    }

    @Override
    public String getMessage() {
        return this.mensagem;
    }
}
