class Retangulo {
  static String cor = 'azul';
  static int contorno = 1;

  static void meuSetup() {
  print('configura cor ...:');
  print('configura contorno ...:');
  print('configura base ...:');
  print('configura altura ...:');
  }
}

void main() {
  //imprime os valores diretamente
  print('A cor do retângulo é: ${Retangulo.cor}');
  print('O contorno do retângulo é: ${Retangulo.contorno}');

  //visualizando o método
  Retangulo.meuSetup();
}