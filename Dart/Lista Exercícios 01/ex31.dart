import 'dart:io';

void main() {
  print('Em que turno você estuda ?\n\nM-matutino\nV-vespertino\nN-Noturno\n');
  String turno = stdin.readLineSync()!;

  switch (turno.toLowerCase()) {
    case 'm':
      print('Bom dia!');
      break;

    case 'v':
      print('Boa tarde!');
      break;

    case 'n':
      print('Boa noite!');
      break;

    default:
      print('\n-----------------------\nDigito inválido, refaça a operação\n-----------------------\n');
      return main();
  }
}
