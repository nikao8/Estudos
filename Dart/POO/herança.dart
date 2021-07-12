class Cachorro {
  String cor;
  double peso;
  String raca;
  // Construtor
  Cachorro({required this.cor, required this.peso, required this.raca});

  // Método
  void latir() {
    print('O cachorro está latindo');
  }

  void farejar() {
    print('O cachorro está farejando');
  }
}

class Gato {
  String cor;
  double peso;
  String raca;
  // Construtor
  Gato({required this.cor, required this.peso, required this.raca});

  // Método
  void miar() {
    print('O cachorro esta miando');
  }

    void farejar(){
    print('O gato está farejando');
  }
}
