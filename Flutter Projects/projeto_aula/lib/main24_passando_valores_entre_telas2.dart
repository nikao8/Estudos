import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    ));

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // Instanciando controller para o text
  TextEditingController _textEditingControllerNome = TextEditingController();

  // Função para salvar o texto
  salvar() {
    String? _nome;

    setState(() {
      _nome = _textEditingControllerNome.text;

      // Chamando a tela
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => ListaNome(nome: _nome),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tela Home'),
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Container(
          margin: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: _textEditingControllerNome,
                decoration: InputDecoration(labelText: 'Insira o seu nome:'),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: ElevatedButton(
                  onPressed: salvar,
                  child: Text('Salvar'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ListaNome extends StatefulWidget {
  // Atributo com construtor
  String? nome;
  ListaNome({this.nome});
  @override
  _ListaNomeState createState() => _ListaNomeState();
}

class _ListaNomeState extends State<ListaNome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Lista de nomes'),
      ),
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Nome: ${widget.nome}'),
            ],
          ),
        ),
      ),
    );
  }
}
