import 'dart:io';

void main() {
  print('Insira o tamanho da area a ser pintada em metros quadrados:');
  double area = double.parse(stdin.readLineSync()!);
  double litrosLata = (area / 6) / 18;
  double litrosGalao = (area / 6) / 3.6;
  //double litrosLataGalao = (area / 6) / 3.6;
  print(
      '\nVoce deseja comprar a tinta em latas de 18 litros ou em galões de 3,6 litros ?\n1 - Lata | 2 - Galão | 3- Lata e Galão\n');
  int escolha = int.parse(stdin.readLineSync()!);
  if (escolha == 1) {
    print(
        'Voce precisara de ${litrosLata.ceil()} latas para pintar o local.\nA sua compra deu ${litrosLata.ceil() * 80} reais.\n\nOBS: Cada lata de 18 litros = 80 reais.');
  } else if (escolha == 2) {
    print(
        'Voce precisara de ${litrosGalao.ceil()} galões para pintar o local.\nA sua compra deu ${litrosGalao.ceil() * 25} reais.\n\nOBS: Cada galão de 3,6 litros = 25 reais.');
  } else if (escolha == 3) {
    double aux = litrosLata % 18;
    double aux1 = aux / 3.6;
    int aux2 = aux1.ceil();
    double aux3 = ((litrosLata * 80) + (aux2 * 25));
    print(
        'Voce precisara de ${litrosLata.ceil()} latas & ${aux2} galões\nA sua compra deu: ${aux3.ceil()} reais.');
  } else {
    print(
        '\nDigito inválido refaça a operação!\n--------------------------------------------------------\n');
    return main();
  }
}
