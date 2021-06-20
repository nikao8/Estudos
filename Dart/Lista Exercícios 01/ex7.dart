import 'dart:io';

void main() {
  print("Insira o lado do quadrado:");
  double lado = double.parse(stdin.readLineSync()!);
  print("O dobro da area deste quadrado é: ${(lado * lado) * 2}");
}