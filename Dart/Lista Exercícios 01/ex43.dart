import 'dart:io';

void main() {
  print('Insira a sua 1 nota:');
  double n1 = double.parse(stdin.readLineSync()!);
  print('Insira a sua 2 nota:');
  double n2 = double.parse(stdin.readLineSync()!);
  print('Insira a sua 3 nota:');
  double n3 = double.parse(stdin.readLineSync()!);
  double media = (n1 + n2 + n3) / 3;

  if (media >= 7) {
    if (media >= 10) {
      print('Média: $media\nAprovado com distinção! ');
    } else {
      print('Média: $media\nAprovado!');
    }
  } else {
    print('Média: $media\nReprovado!');
  }
}
