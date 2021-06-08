import 'dart:io';

void main() {
  print('Insira um numero: ');

  double n = double.parse(stdin.readLineSync()!);

  print('o numero é: $n');
}
