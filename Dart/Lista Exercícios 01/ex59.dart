import 'dart:io';

void main() {
  print('Insira um numero como valor maximo');
  int nm = int.parse(stdin.readLineSync()!);

  int np = 0;
  int aux = 0;

  for (int i = 0; i <= nm; i++) {
    np = 0;
    for(int x = 1; x <= i; x++){
      if(i % x == 0){
        np++;
      }
    }
    if(np == 2){
      print('Numeros primos: $i');
      aux = 1;
    }
  }
    if(aux == 0){
      print('Nao foram encontrados numeros primos no range.');
    }
}
