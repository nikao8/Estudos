class Conta {
  String banco;
  int? numero;
  double agencia;

  //Construindo
  Conta({this.numero, required this.agencia, required this.banco});
}

void main() {
  // Final: modificador que dá exclusividade a sua instância
  final Conta conta1 = new Conta(agencia: 1226, numero: 12345, banco: 'BB');

  print(conta1.banco);
  print(conta1.agencia);
  print(conta1.numero);

  // Não funciona !, pois está sendo usado o modificador 'final' que impede a instância de receber novos valores.
  // conta1 = Conta(agencia: 6585, banco: 'Itau');
  // conta1 = Conta(agencia: 6585, banco: 'Itau');
}
