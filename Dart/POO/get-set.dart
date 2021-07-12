//get serve para pegar alguma coisa
//set serve para confirugar uma coisa

class Conta {
  //Atributos
  //o (_) underline significa Privado (VISIBILIDADE)
  //Não pode ser acesado diretamente pelo meu objeto conta
  //ou seja, só poderá ser utilizado dentro da classe
  //1º PILAR ENCAPSULAMENTO
  double _saque; //privado
  double saldo;

  Conta([this._saque = 100, this.saldo = 1000.0]); //Construtor

  //Como o atributo não pode ser acessado diretamente
  //Vamos usar get e set para configurá-lo
  //Fazendo isso não acessamos diretamente nosso atributos
  //Atenção: Só coloque essas configurações se realmente precisar
  //proteger seu atributo

  //get - pegando o valor
  //get não possui parâmetro e retorna valor
  double get getSaque {
    return this._saque;
    //return 400.0;
  }

  //set - configurando o valor
  //set possui parâmetro mas não retorna valor
  set setSaque(double saque) {
    //Poso aqui vazer verificações e validações
    if (saque > 0 && saque <= saldo) {
      this._saque = saque;
    } else {
      print('Valor indisponível!');
    }
  }
}

void main() {
  //Criando um conta
  Conta conta = new Conta();

  //Com o valor de saque setado (set)
  //Posso atribuir valor ao saque
  //_saque fica sem alteração, ou seja, valor 100
  //não precisa de parenteses
  conta.setSaque = 500;

  //Imprimindo
  print('Valor sacado: ${conta.getSaque}');
}