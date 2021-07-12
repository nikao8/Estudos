import 'dart:io';

void main() {
  print('Insira o primeiro lado do triangulo:');
  double l1 = double.parse(stdin.readLineSync()!);
  print('Insira o segundo lado do triangulo:');
  double l2 = double.parse(stdin.readLineSync()!);
  print('Insira o terceiro lado do triangulo:');
  double l3 = double.parse(stdin.readLineSync()!);

  if ((l1 + l2) >= l3 || (l1 + l3) >= l2 || (l2 + l3) >= l1) {
    if (l1 == l2 && l2 == l3 && l1 == l3) {
      print('O triangulo é Equilátero');
    }else if (l1 == l2 || l2 == l3 || l1 == l3){
      print('O triangulo é Isósceles');
    }else {
      print('O triangulo é Escaleno');
    }
  } else {
    print('Os lados inseridos não formam um triângulo.');
  }
}
