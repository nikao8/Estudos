class Banco {
  // Atributos:
  String nome;
  int conta;
  // Metodo contrutor
  Banco(this.nome, this.conta);
  // Metodo para imprimir user
  imprimirUsuario() {
    print(this.nome);
    print(this.conta);
  }
}
