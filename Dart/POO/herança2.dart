// Classe Pai:
class Animal {
  String cor;
  double peso;
  String raca;

  // Construtor:
  Animal({this.cor = '', this.peso = 0.0, this.raca = ''});

  // Metodo para os dois animais:
  void farejar() {
    print('O animal está farejando...');
  }
}

class Cachorro extends Animal {
  // Método específico do cachorro
  void latir() {
    print('o animal esta latindo...');
  }

  @override // SOBRESCREVENDO MÉTODO DA CLASSE PAI UTILIZANDO '@override'
  void farejar() {
    super.farejar();
    print('Cachorro');
  }
}

class Gato extends Animal {
  // Método específico do cachorro
  void miar() {
    print('o animal esta miando...');
  }

  @override // SOBRESCREVENDO MÉTODO DA CLASSE PAI UTILIZANDO '@override'
  void farejar() {
    super.farejar();
    print('Gato');
  }
}

void main() {
  Cachorro rex = new Cachorro();
  Gato felix = new Gato();

  // Atribuindo valores
  rex.cor = 'Marrom';
  felix.peso = 3.5;

  print('A cor do cachorro é ${rex.cor}');
  rex.latir();
  print('O peso do gato é ${felix.peso}');
  felix.miar();
  print('--------------------------------');
  rex.farejar();
  felix.farejar();
  print('--------------------------------');
}
