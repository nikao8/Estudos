import 'dart:io';
void main() {
  print("Insira um numero que voce deseja converter: metros -> centimetros");
  int n = int.parse(stdin.readLineSync()!);
  print("O numero convertido para centimetros é: ${n * 100}");
}
