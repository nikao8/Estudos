class Produto {
  int codigo;
  String nome;
  double preco;
  double desconto;

  //Construct
  Produto(
    {required this.codigo,
    required this.nome,
    required this.preco,
    this.desconto = 0});
  
  // METODO PARA DAR DESCONTO
  double get precoComDesconto {
    return (1 - desconto) * preco;
  }
}
