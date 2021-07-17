import 'dart:io';

void main() {
  print('Responda com 1- Sim | 2- Não');

  int count = 0;
  print('Você Telefonou para a vítima ?');
  int resposta = int.parse(stdin.readLineSync()!);

  if (resposta == 1) {
    count++;
  }
  resposta = 0;

  print('Você esteve no local do crime ?');
  resposta = int.parse(stdin.readLineSync()!);
  if (resposta == 1) {
    count++;
  }
  resposta = 0;

  print('Você mora perto da vitima ?');
  resposta = int.parse(stdin.readLineSync()!);
  if (resposta == 1) {
    count++;
  }
  resposta = 0;

  print('Você devia pra vitima ?');
  resposta = int.parse(stdin.readLineSync()!);
  if (resposta == 1) {
    count++;
  }
  resposta = 0;

  print('Você já trabalhou com a vitima ?');
  resposta = int.parse(stdin.readLineSync()!);
  if (resposta == 1) {
    count++;
  }
  resposta = 0;

  if (count == 2) {
    print('Suspeito');
  } else if (count == 3 || count == 4) {
    print('Cúmplice');
  } else if (count == 5) {
    print('Assasino');
  } else {
    print('Inocente');
  }
}
