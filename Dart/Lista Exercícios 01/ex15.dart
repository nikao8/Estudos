import 'dart:io';

void main() {
  print('Insira a sua altura para o calculo do peso ideal:');
  double altura = double.parse(stdin.readLineSync()!);

  print('Insira quanto você pesa:');
  double peso = double.parse(stdin.readLineSync()!);

  print('Insira o seu sexo: [M]Mulher | [H]Homem');
  String sexo = stdin.readLineSync()!;
  double pesoIdeal = 0;
  if (sexo == 'm' || sexo == 'M') {
    pesoIdeal = (62.1 * altura) - 44.7;
  } else if (sexo == 'h' || sexo == 'H') {
    pesoIdeal = (72.7 * altura) - 58;
  } else {
    print('Sexo inválido refaça a operação:');
    return main();
  }
  print('\n-------------------------------------------------------');
  print('\nO seu peso ideal é de: $pesoIdeal kg.');

  if (peso > pesoIdeal) {
    print('\nVocê está acima do peso!');
  } else if (peso == pesoIdeal) {
    print('\nVocê está no limite do seu peso ideal!');
  } else {
    print('\nVocê está abaixo do peso!');
  }
}
