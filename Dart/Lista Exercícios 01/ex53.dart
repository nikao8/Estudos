import 'dart:io';

void main() {
  print('Quantos itens o cliente comprou?');
  int qtdItens = int.parse(stdin.readLineSync()!);
  double valor = 0;

  valor = qtdItens * 1.99;

  print('O cliente deve pagar $valor reais');
}
