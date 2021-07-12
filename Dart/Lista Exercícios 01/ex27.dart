import 'dart:io';

void main() {
  print('Insira o primeiro numero:');
  int n1 = int.parse(stdin.readLineSync()!);

  print('Insira o segundo numero:');
  int n2 = int.parse(stdin.readLineSync()!);

  print('Insira o terceiro numero:');
  int n3 = int.parse(stdin.readLineSync()!);

  if (n1 > n2 && n1 > n3) {
    print('O maior número inserido foi: $n1');
  } else if (n2 > n1 && n2 > n3) {
    print('O maior número inserido foi: $n2');
  } else if (n3 > n1 && n3 > n2) {
    print('O maior número inserido foi: $n3');
  } else {
    print('Todos os números são iguais!');
  }
}
