import 'dart:io';
void main() {
  print('Insira um numero:');
  String nStr = stdin.readLineSync()!;

  nStr = nStr.toString();

  int nTam = nStr.length;
  bool aux = false;
  bool aux2 = false;
  int j = 0;
  
  do {
    for (int i = 1; i < nTam; i++) {
      if (nStr.substring(j, i) == '.' || nStr.substring(j, i) == ',') {
        print('O numero inserido é decimal!');
        aux = true;
        aux2 = true;
      }
      j++;
    }
    if (aux2 == false) {
      break;
    }
  } while (aux == false);

  if (aux == false) {
    print('O numero inserido é inteiro!');
  }
}
