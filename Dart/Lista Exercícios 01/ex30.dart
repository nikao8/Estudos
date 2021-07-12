import 'dart:io';
import 'dart:core';

void main() {
  print('Insira o numero 1');
  int n1 = int.parse(stdin.readLineSync()!);
  print('Insira o numero 2');
  int n2 = int.parse(stdin.readLineSync()!);
  print('Insira o numero 3');
  int n3 = int.parse(stdin.readLineSync()!);

  int maior = 0;
  int meio = 0;
  int menor = 0;

  if (n1 > n2 && n1 > n3) {
    maior = n1;
    if (n2 > n3) {
      meio = n2;
      menor = n3;
    } else if (n3 > n2) {
      meio = n3;
      menor = n2;
    }
  } else if (n2 > n1 && n2 > n3) {
    maior = n2;
    if (n1 > n3) {
      meio = n1;
      menor = n3;
    } else if (n3 > n1) {
      meio = n3;
      menor = n1;
    }
  } else if (n3 > n1 && n3 > n2) {
    maior = n3;
    if (n1 > n2) {
      meio = n1;
      menor = n2;
    } else if (n2 > n1) {
      meio = n2;
      menor = n1;
    }
  } else {
    print('Os números inseridos são iguais!');
  }
  print(
      'A ordem decrescente dos numeros é: $maior > $meio > $menor\n e a ordem crescente é: $menor > $meio > $maior');
}
