import 'cliente.dart';
import 'vendaItem.dart';

class Venda {
  // Venda precisa de um cliente
  Cliente cliente;

  List<VendaItem> itens;

  // Construct
  Venda({required this.cliente, this.itens = const []});

  // Calcular o valor total da compra
  // Método especial
  double get valorTotal {
    return itens
      .map((item) => item.preco * item.quantidade)
      .reduce((total, atual) => total + atual);
  }
}
