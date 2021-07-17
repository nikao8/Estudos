import 'dart:io';

void main() {
  print('Insira uma data no formato dd/mm/aaaa');
  int dia = int.parse(stdin.readLineSync()!);
  int mes = int.parse(stdin.readLineSync()!);
  int ano = int.parse(stdin.readLineSync()!);
  bool verificacao = true;
  bool anoBissexto;
  // Validaçoes
  if (dia > 31 || dia < 1) {
    verificacao = false;
  }

  if (mes > 12 || mes < 1) {
    verificacao = false;
  }

  if ((ano % 4 == 0 && ano % 100 != 0) || ano % 400 == 0) {
    anoBissexto = true;
  } else {
    anoBissexto = false;
  }

  if ((mes == 2 && anoBissexto == false && dia > 28) ||
      (mes == 2 && anoBissexto == true && dia > 29)) {
    verificacao = false;
  }

  if (verificacao == true) {
    print('A data inserida é valida!');
  } else {
    print('A data inserida é invalida');
  }
}
