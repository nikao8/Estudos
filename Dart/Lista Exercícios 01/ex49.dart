import 'dart:io';
void main() {
  print('Digite [A] para Alcool e [G] para gasolina:');
  String tipo = stdin.readLineSync()!;
  tipo = tipo.toUpperCase();
  double desconto = 0;
  double saldo = 0;

  if (tipo == 'A') {
    print('Quantos litros de alcool?:');
    double litrosA = double.parse(stdin.readLineSync()!);
    if (litrosA <= 20) {
      for (int i = 0; i < litrosA; i++) {
        desconto += (litrosA * 0.03);
      }
    } else {
      for (int i = 0; i < litrosA; i++) {
        desconto += (litrosA * 0.05);
      }
    }
    saldo = (litrosA * 1.90) - desconto;
  } else if (tipo == 'G') {
    print('Quantos litros de gasolina ?:');
    double litrosG = double.parse(stdin.readLineSync()!);
    if (litrosG <= 20) {
      for (int i = 0; i < litrosG; i++) {
        desconto += (litrosG * 0.04);
      }
    } else {
      for (int i = 0; i < litrosG; i++) {
        desconto += (litrosG * 0.06);
      }
    }
    saldo = (litrosG * 2.50) - desconto;
  } else {
    print('Digito inválido');
    return main();
  }

  print('O cliente deve pagar: $saldo reais.');
}
