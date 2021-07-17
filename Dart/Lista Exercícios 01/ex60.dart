import 'dart:io';

void main() {
  int i = 0;
  int x = 0;

  print('Inicia a tabuada em que numero?');
  int inicio = int.parse(stdin.readLineSync()!);
  print('Termina em que numero?');
  int fim = int.parse(stdin.readLineSync()!);
  for (i = inicio; i <= fim; i++) {
    print('\nTabuada do $i:\n');
    for (x = inicio; x <= fim; x++) {
      print('$i x $x = ${i * x}');
    }
  }
}
