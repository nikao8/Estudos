// Classes abstratas servem para impedir que uma classe possa ser instanciada.
// Servindo como molde para futuras classes que extenderão e irão sobreescrever os metodos!.
abstract class Animal {
  String cor;
  double peso;
  String nome;

  // Construtor
  Animal({this.cor = '', this.peso = 0.0, this.nome = ''});

  // Método vazio (permitido somente em classes abstratas)
  void correr();
}

class Cachorro extends Animal {
  @override
  void correr() {
    print('O animal esta correndo...');
  }
}

void main() {
  var rex = Cachorro();
  rex.correr();
}
