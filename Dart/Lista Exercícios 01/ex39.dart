import 'dart:io';
import 'dart:math';

void main() {
  print('Insira o valor de "a":');
  double a = double.parse(stdin.readLineSync()!);
  print('Insira o valor de "b":');
  double b = double.parse(stdin.readLineSync()!);
  print('Insira o valor de "c":');
  double c = double.parse(stdin.readLineSync()!);

  double delta = (b * b) - 4 * a * c;
  double x1;
  double x2;
  if (a == 0 || delta < 0) {
    print(
        'A equação não é do segundo grau. (a = 0), ou o delta é um valor negativo.');
  } else {
    if (delta > 0) {
      x1 = (-b + sqrt(delta)) / (2 * a);
      x2 = (-b - sqrt(delta)) / (2 * a);
      print('x1 = $x1\nx2 = $x2');
    } else {
      x1 = (-b + sqrt(delta)) / (2 * a);
      print('A equação so possui uma única raiz\nx = $x1');
    }
  }
}
