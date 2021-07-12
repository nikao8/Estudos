/*
  É um acordo feito com uma classe que obriga sua implementação

  Podemos utilizar interfaze quando temos muitos objetos que possuem um mesmo metodo

  Cria-se uma classe abstrata para sera a interface
  Uma observação não podemos ter múltiplas heranças, mas podemos ter múltiplas
  implementações.
*/

abstract class Poliglota {
  void falarLingua();
}

abstract class MasterChef {
  void cozinhar();
}

abstract class Pessoa {
  void falar() {
    print('Está falando alguma coisa...');
  }
}

// Toda classe implementada é uma interface!
class Medico extends Pessoa implements Poliglota {
  @override
  void falarLingua() {
    print('O médico fala 3 idiomas...');
  }
}

class Arquiteto extends Pessoa implements Poliglota, MasterChef {
  @override
  void falarLingua() {
    print('O arquiteto fala 4 linguas');
  }

  @override
  void cozinhar() {
    print('Faz frango com quiabo');
  }
}

void main() {
  Medico john = new Medico();
  john.falarLingua();
  john.falar();

  Arquiteto jane = new Arquiteto();
  jane.falarLingua();
  jane.cozinhar();
}
