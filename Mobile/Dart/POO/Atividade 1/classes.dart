class Veiculo {
  // Atributos da classe:
  int velocidade;
  // Metodo construtor
  Veiculo(this.velocidade);

  // Metodo:
  aceleracao() {
    while (velocidade < 100) {     
      print('Acelerando o carro - $velocidade km/h');
      velocidade += 10;
    }
  }
  limite(){
    if (velocidade == 100) {
        print('O carro atingiu a marca de 100 km/h');
      }
  }
  desaceleracao(){
    if (velocidade == 100) {
      while (velocidade != 0) {
        velocidade -= 10;
        print('Desacelerando o carro - $velocidade km/h');
      }
    }
  }
}
