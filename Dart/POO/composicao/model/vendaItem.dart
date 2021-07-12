import 'produto.dart';

class VendaItem {
  /* Uma venda precisa de um produto */
  // Composição
  Produto produto;
  int quantidade;
  double? _preco;

  // Construct
  VendaItem({required this.produto, this.quantidade = 1});

  // Método especial
  double get preco {
    // pega o preço com desconto
    _preco = produto.precoComDesconto;
    // Retorna o valora calculado
    return _preco!;
  }
}
