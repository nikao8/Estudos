class Conta {
  Cliente cliente;
  String nomeBanco;
  int agencia;
  int codigo;
  double saldo;

  Conta(
      {required this.cliente /* OBJETO DO TIPO CLIENTE DENTRO DA CLASSE CONTA */,
      required this.nomeBanco,
      required this.agencia,
      required this.codigo,
      this.saldo = 4000.0});
}

class Cliente {
  String nomeCliente;
  String cpf;
  String celular;

  Cliente(
      {required this.nomeCliente, required this.cpf, required this.celular});
}

void main() {
  var conta1 = new Conta(
    nomeBanco: 'Itaú',
    agencia: 1226,
    codigo: 001,
    cliente: new Cliente(
      nomeCliente: 'João Pereira',
      cpf: '123.456.789-10',
      celular: '(32)9999-9999'
    )
  );
  print(
      '--------------------------------\n\tDADOSBANCARIOS\n--------------------------------\n');
  print('Banco: ${conta1.nomeBanco}');
  print('Agencia: ${conta1.agencia}');
  print('Código: ${conta1.codigo}');
  print('Nome: ${conta1.cliente.nomeCliente}');
  print('CPF: ${conta1.cliente.cpf}');
  print('Saldo: ${conta1.saldo}');
}
