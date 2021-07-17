import 'dart:io';

//import 'dart:math';
//import 'dart:core';
void main() {
  print('Insira o valor do saque:');
  int saque = int.parse(stdin.readLineSync()!);

  int notaCem = (saque ~/ 100);
  saque = (saque - (notaCem * 100));

  int notaCinquenta = (saque ~/ 50);
  saque = (saque - (notaCinquenta * 50));

  int notaDez = (saque ~/ 10);
  saque = (saque - (notaDez * 10));

  int notaCinco = (saque ~/ 5);
  saque = (saque - (notaCinco * 5));

  int notaUm = saque;

  print(
      'Voce vai receber:\n$notaCem notas de 100 reais;\n$notaCinquenta notas de 50 reais;\n$notaDez notas de 10 reais;\n$notaCinco notas de 5 reais;\ne $notaUm moedas de 1 real. ');

  //if (saque )
}
