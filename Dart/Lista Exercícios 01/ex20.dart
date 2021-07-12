import 'dart:io';

void main() {
  print('Insira o tamanho do arquivo em MB:');
  double tamanho = double.parse(stdin.readLineSync()!);
  print('Agora insira a velocidade de download em Mbps:');
  double velocidade = double.parse(stdin.readLineSync()!);
  double minutos = (tamanho / velocidade) / 60;
  print('Voce precisara de ${minutos.ceil()} minutos aproximadamente');
}
