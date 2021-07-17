import 'dart:io';

void main() {
  print('Digite um numero para saber se ele é primo:');
  int aux = 0;
  int n = int.parse(stdin.readLineSync()!);

  for (int i = 2; i <= n / 2; i++) {
    if (n % i == 0) {
      aux++;
      break;
    }
  }
  if (aux == 0) {
    print('Numero primo');
  } else {
    print('O numero nao é primo');
  }
}
