import 'dart:io';

void main() {
  print('Escolha o tipo de carne:\n1 - File Duplo\n2 - Alcatra\n3 - Picanha ');
  int escolha = int.parse(stdin.readLineSync()!);
  double carneKG = 0;
  double pagar = 0;
  switch (escolha) {
    case 1:
      print('Insira quantos kg de File Duplo voce comprou:');
      carneKG = double.parse(stdin.readLineSync()!);

      if (carneKG > 0 && carneKG <= 5) {
        pagar = carneKG * 4.90;
      } else if (carneKG > 5) {
        pagar = carneKG * 5.80;
      } else {
        pagar = 0;
      }
      break;

    case 2:
      print('Insira quantos kg de Alcatra voce comprou:');
      carneKG = double.parse(stdin.readLineSync()!);

      if (carneKG > 0 && carneKG <= 5) {
        pagar = carneKG * 5.90;
      } else if (carneKG > 5) {
        pagar = carneKG * 6.80;
      } else {
        pagar = 0;
      }
      break;

    case 3:
      print('Insira quantos kg de Picanha voce comprou:');
      carneKG = double.parse(stdin.readLineSync()!);

      if (carneKG > 0 && carneKG <= 5) {
        pagar = carneKG * 6.90;
      } else if (carneKG > 5) {
        pagar = carneKG * 7.80;
      } else {
        pagar = 0;
      }
      break;

    default:
      print('Digito invalido.');
      return main();
  }

  print('Voce vai pagar com os cartoes Tabajara ? 1- SIM | 2- NÃO');
  int cartao = int.parse(stdin.readLineSync()!);

  print('\n----------CUPOM FISCAL----------\n\n');
  if (escolha == 1) {
    print('Tipo de carne: File Duplo');
  } else if (escolha == 2) {
    print('Tipo de carne: Alcatra');
  } else {
    print('Tipo de carne: Picanha');
  }
  print('Quantidade: $carneKG kg.');
  if (cartao == 1) {
    print('Tipo de pagamento: Cartão Tabajara');
    print('Desconto de 5% aplicado. (Desconto: ${pagar * 0.05})');
    pagar = pagar - (pagar * 0.05);
  } else {
    print('Tipo de pagamento: Outro');
  }
  print('Valor final da compra: $pagar reais.\n\n--------------------------------');
}
