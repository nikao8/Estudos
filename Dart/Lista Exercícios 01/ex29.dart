import 'dart:io';

void main() {
  print('Insira o preço do primeiro produto:');
  double p1 = double.parse(stdin.readLineSync()!);

  print('Insira o preço do segundo produto:');
  double p2 = double.parse(stdin.readLineSync()!);

  print('Insira o preço do terceiro produto:');
  double p3 = double.parse(stdin.readLineSync()!);

  if (p1 < p2 && p1 < p3) {
    print('O produto mais barato é: $p1');
  } else if (p2 < p1 && p2 < p3) {
    print('O produto mais barato é: $p2');
  } else if (p3 < p1 && p3 < p2) {
    print('O produto mais barato é: $p3');
  } else {
    print('Todos os produtos possuem o mesmo preço!');
  }
}
