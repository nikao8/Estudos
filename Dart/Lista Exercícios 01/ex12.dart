import 'dart:io';
import 'dart:math';
void main() {
  print("Insira um numero inteiro:");
  int n1 = int.parse(stdin.readLineSync()!);
  print("Insira um outro numero inteiro:");
  int n2 = int.parse(stdin.readLineSync()!);
  print("Insira um numero real:");
  double n3 = double.parse(stdin.readLineSync()!);
  
  print('O produto do dobro do primeiro com metade do segundo: ${(n1*2)+(n2/2)}');
  print('A soma do triplo do primeiro com o terceiro: ${(n1 * 3) + n3}');
  print('terceiro elevado ao cubo: ${pow(n3,3)}'); // Usando a funçao matematica para descobrir o cubo
}
