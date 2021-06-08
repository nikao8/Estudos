import 'dart:io';

void main() {
  print("Insira o 1 numero:");
  int n1 = int.parse(stdin.readLineSync()!);
  print("Insira o 2 numero:");
  int n2 = int.parse(stdin.readLineSync()!);
  print('\nA soma dos numeros inseridos é: ${n1 + n2}');
}
