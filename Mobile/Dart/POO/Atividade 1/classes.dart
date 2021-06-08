class Carro {
  // Atributos da classe:
  int velocidade;
  // Metodo construtor
  Carro(this.velocidade);

  // Metodo:
  Aceleracao() {
    int velocidade = 0;
    while (velocidade < 100) {     
      print('Acelerando o carro - $velocidade km/h');
      velocidade += 10;
      if (velocidade == 100) {
        print('O carro atingiu a marca de 100 km/h');
      }
    }
    if (velocidade == 100) {
      while (velocidade != 0) {
        velocidade -= 10;
        print('Desacelerando o carro - $velocidade km/h');
      }
    }
  }
}
