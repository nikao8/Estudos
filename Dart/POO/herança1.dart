// Classe Pai:
class Animal {
  String cor;
  double peso;
  String raca;

  // Construtor:
  Animal({this.cor = '', this.peso = 0.0, this.raca = ''});
}

// PARA A RELAÇÃO DE HERANÇA UTILIZAMOS A PALAVRA 'extends'
class Cachorro extends Animal {
  // Metodo:
  void latir() {
    print('O cachorro esta latindo');
  }
}

class Gato extends Animal {
  // Método
  void latir() {
    print('O gato esta miando');
  }
}

void main() {
  Cachorro rex = new Cachorro();
  Gato felix = new Gato();

  // Veja que o atributo 'cor' e 'peso' não estão presentes nas classes Gato e nem Cachorro
  // mas como estão estendidos a classe pai, essas classes filhos acessam os atributos da classe pai. 
  rex.cor = 'Marrom';
  felix.peso = 3.5;

  print('A cor do cachorro é: ${rex.cor}');
  print('O peso do gato é: ${felix.peso}');
}
