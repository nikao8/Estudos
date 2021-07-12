import 'dart:io';

void main() {
  print('Insira um ano para descobir se este ano é bissexto:');
  int ano = int.parse(stdin.readLineSync()!);

  if (((ano % 4 == 0) && (ano % 100 != 0)) || (ano % 400 == 0)) {
    print('O ano é bissexto');
  } else {
    print('O ano não é bissexto');
  }
}
