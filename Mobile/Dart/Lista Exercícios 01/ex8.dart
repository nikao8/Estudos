import 'dart:io';

void main() {
  print("Insira o numero de horas trabalhadas:");
  double trabHora = double.parse(stdin.readLineSync()!);

  print("Quanto voce ganha por hora ?");
  double valHora = double.parse(stdin.readLineSync()!);

  print("O seu salario no final do mes é: ${valHora * trabHora}");
}
