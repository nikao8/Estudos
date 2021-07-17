import 'dart:io';

void main() {
  print('Insira um numero inteiro:');
  int n = int.parse(stdin.readLineSync()!);

  if (n % 2 == 0) {
    print('O numero $n é par!');
  } else {
    print('O numero $n é impar!');
  }
}
