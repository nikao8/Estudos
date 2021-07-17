import 'dart:io';

void main() {
  print('Insira o primeiro numero:');
  double n1 = double.parse(stdin.readLineSync()!);
  print('Insira o segundo numero:');
  double n2 = double.parse(stdin.readLineSync()!);

  print(
      'Qual operação voce deseja fazer?\n1-Soma\n2-Subtração\n3-Multiplicação');
  int escolha = int.parse(stdin.readLineSync()!);
  double resultado = 0;
  switch (escolha) {
    case 1:
      resultado = n1 + n2;
      break;

    case 2:
      resultado = n1 - n2;
      break;

    case 3:
      resultado = n1 * n2;
      break;

    default:
      print('Escolha invalida, escolha novamente!');
      return main();
  }

  print('\nResultado da operação: $resultado');

  if (resultado < 0) {
    print('O resultado foi negativo!');
  }

  if (resultado % 2 == 0) {
    print('O resultado é um numero par');
  } else {
    print('O resultado é um numero impar');
  }
  int aux = (resultado).round();
  if (resultado == aux) {
    print('O resultado é inteiro!');
  } else {
    print('O resultado é decimal');
  }
}
