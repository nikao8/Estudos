import 'dart:io';

void main() {
  int aux = 1;
  int i = 1;
  double total = 0;
  while (aux == 1) {
    print('Insira o valor do Produto $i:');
    double valor = double.parse(stdin.readLineSync()!);
    total += valor;
    print('Produto $i: $valor reais');
    print('\n0 - Sair | 1- Continuar');
    aux = int.parse(stdin.readLineSync()!);
    i++;
  }
  print('\nTotal da compra: $total');
}
