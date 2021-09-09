import 'package:flutter/material.dart';

main() => runApp(MaterialApp(
      home: Home(),
    ));

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tela Home'),
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Servicos(
                        nome: 'Mecânico',
                        endereco: 'Rua Santo Antonio 19',
                        contato: '(32)99999-9999',
                      ),
                    ),
                  );
                },
                child: Text('Ir para Serviços'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// ------------------------------- TELA SERVIÇOS -------------------------------

class Servicos extends StatefulWidget {
 final String? nome, endereco, contato;

  // Criando Construtor
  Servicos({this.nome, this.endereco, this.contato});

  @override
  _ServicosState createState() => _ServicosState();
}

class _ServicosState extends State<Servicos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tela de Serviços'),
        backgroundColor: Colors.blue,
      ),

      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Tela de Serviços Mecanicos'),
              Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  children: [
                    Text('Profissional: ${widget.nome}'),
                    Text('Endereço: ${widget.endereco}'),
                    Text('Contato: ${widget.contato}'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}