import 'dart:io';

void main() {
  print('Insira o primeiro valor:');
  int n1 = int.parse(stdin.readLineSync()!);
  print('Insira o segundo valor:');
  int n2 = int.parse(stdin.readLineSync()!);
  if (n1 > n2) {
    print('O maior numero é: $n1');
  } else if (n1 == n2) {
    print('Os numeros são iguais');
  } else {
    print('O maior numero é: $n2');
  }
}
