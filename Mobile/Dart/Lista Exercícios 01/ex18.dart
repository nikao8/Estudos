import 'dart:io';
void main() {
  print('Insira o tamanho da area a ser pintada em metros quadrados:');
  double area = double.parse(stdin.readLineSync()!);
  double litrosNecessarios = (area / 3)/18;

  print(
      'Voce precisara de ${litrosNecessarios.ceil()} latas para pintar o local.\nA sua compra deu ${litrosNecessarios.ceil() * 80} reais.\n\nOBS: Cada lata de 18 litros = 80 reais.');
}
