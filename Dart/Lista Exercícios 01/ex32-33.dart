import 'dart:io';

void main() {
  print('Olá colaborador, insira o seu salário:');
  double salario = double.parse(stdin.readLineSync()!);

  if (salario <= 280) {
    print('O seu salário reajustado é de: ${salario + (salario * 0.20)}');
    print('O salário antes do reajuste: ${salario}');
    print('O aumento do salário (20%): ${salario * 0.20}');
  } else if (salario > 280 && salario <= 700) {
    print('O seu salário reajustado é de: ${salario + (salario * 0.15)}');
    print('O salário antes do reajuste: ${salario}');
    print('O aumento do salário (15%): ${salario * 0.15}');
  }else if(salario > 700 && salario <= 1500){
    print('O seu salário reajustado é de: ${salario + (salario * 0.10)}');
    print('O salário antes do reajuste: ${salario}');
    print('O aumento do salário (10%): ${salario * 0.10}');
  }else{
    print('O seu salário reajustado é de: ${salario + (salario * 0.05)}');
        print('O salário antes do reajuste: ${salario}');
    print('O aumento do salário (5%): ${salario * 0.05}');
  }
}
