import 'dart:io';

void main() {
  print("Insira quantos peixes você pescou: ");
  int qtdPeixe = int.parse(stdin.readLineSync()!);
  int contador = 0;

  double multa = 0;
  int excesso = 0;
  do {
    contador++;
    print("\nInsira o peso do peixe $contador pescado em kg: ");
    double peso = double.parse(stdin.readLineSync()!);
    if (peso > 50) {
      multa += (peso - 50) * 4;
      excesso++;
    }
  } while (contador < qtdPeixe);
  print("\n------------------------------------------------------\nVocê pescou $excesso peixes com peso em excesso!\nO valor da sua multa é de: $multa reais.");
}