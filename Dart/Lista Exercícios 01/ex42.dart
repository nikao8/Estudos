import 'dart:io';
void main() {
  print('Insira um numero menor que 1000');
  int n = int.parse(stdin.readLineSync()!);

  //List<String> nStr = [n.toString()];
  String nStr = n.toString();

  String centena;
  String dezena;
  String unidade;

  if (n >= 1000) {
    print('Dígito inválido refaça.');
    return main();
  } else {
    if (nStr.length == 3) {
      centena = nStr.substring(0, 1);
      dezena = nStr.substring(1, 2);
      unidade = nStr.substring(2, 3);
      print('Numero inserido: $n \ncentena: $centena, dezena: $dezena e unidade: $unidade');
    }

    if (nStr.length == 2) {
      dezena = nStr.substring(0, 1);
      unidade = nStr.substring(1, 2);
      print('Numero inserido: $n \ndezena: $dezena e unidade: $unidade');
    }

    if (nStr.length == 1) {
      unidade = nStr.substring(0, 1);
      print('Numero inserido: $n \nunidade: $unidade');
    }
  }
}
