import 'dart:io';

void main() {
  print("Insira a sua 1 nota:");
  double nota1 = double.parse(stdin.readLineSync()!);
  print("Insira a sua 2 nota:");
  double nota2 = double.parse(stdin.readLineSync()!);
  print("Insira a sua 3 nota:");
  double nota3 = double.parse(stdin.readLineSync()!);
  print("Insira a sua 4 nota:");
  double nota4 = double.parse(stdin.readLineSync()!);

  print("A sua media é: ${(nota1 + nota2 + nota3 + nota4) / 4}");
}
