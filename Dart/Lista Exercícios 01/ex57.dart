import 'dart:io';
//import 'dart:math';

void main() {
  int aux = 1;
  int i = 0;

  double temperatura;
  double max = 0;
  double min = 0;
  //double min2 = 0;
  while (aux == 1) {
    print('Insira a $i temperatura:');
    temperatura = double.parse(stdin.readLineSync()!);

    if (temperatura >= max) {
      max = temperatura;
    }

    if (min == 0 && i == 0) {
      min = max;
    }

    if (temperatura <= min) {
      min = temperatura;
    }

    print('1 - Continuar | 0 - Sair');
    aux = int.parse(stdin.readLineSync()!);
    i++;
  }
  print('Máxima: ${max}\n Minima: $min');
}
