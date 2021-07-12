import 'model/cliente.dart';
import 'model/produto.dart';
import 'model/venda.dart';
import 'model/vendaItem.dart';

void main() {
  // Criando uma venda
  var venda =
      Venda(cliente: new Cliente(nome: 'José Andrade', cpf: '999.999.999-99'),

          // Debtri da Venda tem uma lista List() de itens
          itens: <VendaItem>[
        new VendaItem(
            //Composição
            quantidade: 50,
            produto: new Produto(
                //composição
                codigo: 0001,
                nome: 'Clips',
                preco: 2.0,
                desconto: 0.5)),
        new VendaItem(
            //Composição
            quantidade: 40,
            produto: Produto(
                // composição
                codigo: 0002,
                nome: 'Apontadores',
                preco: 5.0,
                desconto: 0.25)),
        new VendaItem(
            // Composição
            quantidade: 30,
            produto: Produto(
                // composicao
                codigo: 0001,
                nome: 'Estojos',
                preco: 2.0,
                desconto: 0.5)),
      ]);

  print('==========================================');
  print('Nome do cliente: ${venda.cliente.nome}');
  print('CPF do cliente: ${venda.cliente.cpf}');
  print('Item 1: ${venda.itens[0].produto.nome}');
  print('Item 2: ${venda.itens[1].produto.nome}');
  print('Item 3: ${venda.itens[2].produto.nome}');
  print('------------------------------------------');
  print('O valor total da venda: ${venda.valorTotal}');
  print('==========================================');
}
