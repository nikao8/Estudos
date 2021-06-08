import 'dart:io';

void main() {
  print('Insira o quanto voce ganha por hora:');
  double salHora = double.parse(stdin.readLineSync()!);
  print('Insira o numero de horas trabalhadas:');
  double horasTrab = double.parse(stdin.readLineSync()!);
  double salBruto = salHora * horasTrab;
  print('\n--------------------------------------\nO seu salario bruto é de: $salBruto');
  print(
      '\n--------------------------------------\nLista de descontos:\n--------------------------------------\n');
  print('O desconto do Imposto de renda é de: ${salBruto * 0.11}');
  print('O desconto do INSS é: ${salBruto * 0.08}');
  print('O Sindicato é: ${salBruto * 0.05}');
  print('O seu salario líquido é: ${salBruto - (salBruto - ((salBruto * 0.11) + (salBruto * 0.08) + (salBruto * 0.08)))}');
}
