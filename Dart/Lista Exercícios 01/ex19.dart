import 'dart:io';

void main() {
  print('Insira o tamanho da area a ser pintada em metros quadrados:');
  double area = double.parse(stdin.readLineSync()!);
  double litrosLata = (area / 6) / 18;
  double litrosGalao = (area / 6) / 3.6;
  print(
      '\nVocê deseja comprar a tinta em latas de 18 litros ou em galões de 3,6 litros ?\n1 - Lata | 2 - Galão | 3- Lata e Galão\n');
  int escolha = int.parse(stdin.readLineSync()!);
  if (escolha == 1) {
    print(
        'Você precisará de ${litrosLata.ceil()} latas para pintar o local.\nA sua compra deu ${litrosLata.ceil() * 80} reais.\n\nOBS: Cada lata de 18 litros = 80 reais.');
  } else if (escolha == 2) {
    print(
        'Você precisará de ${litrosGalao.ceil()} galões para pintar o local.\nA sua compra deu ${litrosGalao.ceil() * 25} reais.\n\nOBS: Cada galão de 3,6 litros = 25 reais.');
  } else if (escolha == 3) {
    double aux = area / 6;
    litrosLata = 0;
    litrosGalao = 0;
    while (aux >= 10.8 && aux >= 0) {
      litrosLata++;
      aux -= 18;
    }
    while (aux <= 10.8 && aux >= 0) {
      litrosGalao++;
      aux -= 3.6;
    }
    print('Você precisará de ${litrosLata} latas & ${litrosGalao} galões.\nA sua compra deu ${(litrosLata * 80) + (litrosGalao * 25)}');
  } else {
    print(
        '\nDigito inválido refaça a operação!\n--------------------------------------------------------\n');
    return main();
  }
}
