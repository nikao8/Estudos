import 'dart:io';

void main() {
  print('Quantos pães o cliente comprou?');
  int qtdItens = int.parse(stdin.readLineSync()!);
  double valor = 0;

  valor = qtdItens * 0.18;

  print('O cliente deve pagar $valor reais');
}

