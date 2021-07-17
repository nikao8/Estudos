import 'dart:io';

void main() {
  print('Insira quantos kilos comprados de morango:');
  double morangoKg = double.parse(stdin.readLineSync()!);

  print('Insira quantos kilos comprados de maçã:');
  double macaKg = double.parse(stdin.readLineSync()!);

  //double descMorango = 0;
  //double descMaca = 0;

  double pagarMorango = 0;
  double pagarMaca = 0;

  if (morangoKg > 0 && morangoKg <= 5) {
    pagarMorango = morangoKg * 2.50;
  } else if (morangoKg > 5) {
    pagarMorango = morangoKg * 2.20;
  } else {
    pagarMorango = 0;
  }
  // MAÇA
  if (macaKg > 0 && macaKg <= 5) {
    pagarMaca = macaKg * 1.80;
  } else if (macaKg > 5) {
    pagarMaca = macaKg * 1.50;
  } else {
    pagarMaca = 0;
  }
  double total = pagarMorango + pagarMaca;
  // DESCONTO
  if ((morangoKg + macaKg) >= 25.0) {
    total = (total - (total * 0.10));
    print('\nDesconto de 10% aplicado!');
  }

  print('O cliente tem que pagar: $total');

}
