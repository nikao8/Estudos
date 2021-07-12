import 'dart:io';

void main() {
  print('Insira uma letra: ');
  String letra = stdin.readLineSync()!;
  if (letra == 'F' || letra == 'f') {
    print('Feminino');
  } else if (letra == 'M' || letra == 'm') {
    print('Masculino');
  } else {
    print('Digito inválido, refaça.');
    return main();
  }
}
