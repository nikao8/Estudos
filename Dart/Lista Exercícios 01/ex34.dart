import 'dart:io';

void main() {
  print('Insira o quanto voce ganha por hora:');
  double salHora = double.parse(stdin.readLineSync()!);
  print('Insira o numero de horas trabalhadas:');
  double horasTrab = double.parse(stdin.readLineSync()!);
  double salBruto = salHora * horasTrab;
  print(
      '\n--------------------------------------\nO seu salario bruto é de: $salBruto');
  print(
      '--------------------------------------\nLista de descontos:\n--------------------------------------\n');
  print('O acréscimo do FGTS é: ${salBruto * 0.11}');
  print('O desconto sindicato é: ${salBruto * 0.03}');

  double salLiq = (salBruto + (salBruto * 0.11)) - (salBruto * 0.03);

  if (salBruto <= 900) {
    print('Você está isento do desconto do imposto de renda.');
    print('O seu salario líquido é: $salLiq');
  } else if (salBruto > 900 && salBruto <= 1500) {
    salLiq = salLiq - (salBruto * 0.05);
    print('O desconto do imposto de renda é de: ${salBruto * 0.05}');
    print('O seu salario líquido é: $salLiq');
  } else if(salBruto > 1500 && salBruto <= 2500){
    salLiq = salLiq - (salBruto * 0.10);
    print('O desconto do imposto de renda é de: ${salBruto * 0.10}');
    print('O seu salario líquido é: $salLiq');
  }
  else {
    salLiq = salLiq - (salBruto * 0.20);
    print('O desconto do imposto de renda é de: ${salBruto * 0.20}');
    print('O seu salario líquido é: $salLiq');
  }
}
