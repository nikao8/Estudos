import 'dart:io';

void main() {
  print('Insira a sua primeira nota parcial:');
  double nota1 = double.parse(stdin.readLineSync()!);
  print('Insira a sua segunda nota parcial:');
  double nota2 = double.parse(stdin.readLineSync()!);

  if (((nota1 + nota2) / 2) >= 7) {
    if (((nota1 + nota2) / 2) == 10) {
    print('Parabéns aluno você foi aprovado com distinção!');
    }else {
      print('Parabéns aluno você foi aprovado!');
    }
  } else if (((nota1 + nota2) / 2) < 7) {
    print('Você foi reprovado, estude mais...');
  }
}
