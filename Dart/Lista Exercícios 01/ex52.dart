import 'dart:io';

//import 'dart:math';
//import 'dart:core';
void main() {
  print('Insira o valor da compra:');
  int compra = int.parse(stdin.readLineSync()!);

  int notaCem = (compra ~/ 100);
  compra = (compra - (notaCem * 100));

  int notaCinquenta = (compra ~/ 50);
  compra = (compra - (notaCinquenta * 50));

  int notaDez = (compra ~/ 10);
  compra = (compra - (notaDez * 10));

  int notaCinco = (compra ~/ 5);
  compra = (compra - (notaCinco * 5));

  int notaUm = compra;

  print(
      'Voce vai receber:\n$notaCem notas de 100 reais;\n$notaCinquenta notas de 50 reais;\n$notaDez notas de 10 reais;\n$notaCinco notas de 5 reais;\ne $notaUm moedas de 1 real. ');

  //if (saque )
}
