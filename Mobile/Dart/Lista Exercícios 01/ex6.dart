import 'dart:io';

void main() {
  print("Insira o raio do circulo a ser calculado:");
  double raio = double.parse(stdin.readLineSync()!);
  print("A area do circulo com raio $raio é ${3.14 * (raio * raio)}");
}
