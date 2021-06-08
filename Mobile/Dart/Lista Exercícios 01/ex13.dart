import 'dart:io';

void main() {
  print('Insira a sua altura para o calculo do peso ideal:');
  double altura = double.parse(stdin.readLineSync()!);
  print('\nO seu peso ideal é de: ${(72.7 * altura) - 58} kg.');
}
