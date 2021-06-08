import 'dart:io';
void main() {
  print("Insira a temperatura em Farenheit para ser convertida em Celsius");
  double temp = double.parse(stdin.readLineSync()!);
  print("A temperatura convertida é de: ${(5 * (temp - 32)) / 9}");
}