import 'dart:io';

void main() {
  print('Insira o primeiro valor:');
  int n1 = int.parse(stdin.readLineSync()!);
  if (n1 >= 0) {
    print('O numero inserido é positivo');
  } else {
    print('O numero inserido é negativo');
  }
}