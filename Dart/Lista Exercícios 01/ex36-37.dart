import 'dart:io';

void main() {
  print('Insira sua primeira nota:');
  double n1 = double.parse(stdin.readLineSync()!);
  print('Insira sua segunda nota:');
  double n2 = double.parse(stdin.readLineSync()!);
  double med = (n1 + n2) / 2;
  print('Nota 1: $n1\nNota 2: $n2\nMédia: $med');
  if (med >= 0 && med < 4) {
    print('Sua nota na disciplina é: E\nVocê está reprovado.');
  } else if (med >= 4 && med < 6) {
    print('Sua nota na disciplina é: D\nVocê está reprovado.');
  } else if (med >= 6 && med < 7.5) {
    print('Sua nota na disciplina é: C\nVocê está aprovado.');
  } else if (med >= 7.5 && med < 9) {
    print('Sua nota na disciplina é: B\nVocê está aprovado.');
  } else if (med >= 9) {
    print('Sua nota na disciplina é: A\nVocê está aprovado.');
  } else {
    print('Nota inválida, refaça a operação.');
    return main();
  }
}
