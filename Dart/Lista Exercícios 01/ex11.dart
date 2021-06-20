import 'dart:io';
void main() {
  print("Insira a temperatura em Celsius para ser convertida em Farenheit");
  double temp = double.parse(stdin.readLineSync()!);
  print("A temperatura convertida é de: ${((temp * 9 / 5) + 32)}");
}