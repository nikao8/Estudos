// REQUISIÇÃO DE API'S
import 'package:flutter/material.dart';

// Toda vez q utilizar dependencias do flutter utilizar no terminal:
// dart pub upgrade --null-safety
// dart migrate

import 'package:http/http.dart' as http;
import 'dart:convert';

main() => runApp(MaterialApp(
      home: Home(),
      debugShowCheckedModeBanner: false,
    ));

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // Controller
  TextEditingController _textEditingControllerCep = TextEditingController();

  // Criando variaveis
  String _logradouro = '';
  String _complemento = '';
  String _bairro = '';
  String _localidade = '';
  String _uf = '';

  _buscaCep() async {
    int? cep = int.tryParse(_textEditingControllerCep.text);
    final String authority = 'viacep.com.br';
    final String path = 'ws/$cep/json/';

    var response = await http.get(Uri.https(authority, path));

    // Decodificando e passando para um Map
    // Chave = String && valor = dynamic
    Map<String, dynamic> objetoJson = json.decode(response.body);

    setState(() {
      _logradouro = objetoJson['logradouro'];
      _complemento = objetoJson['complemento'];
      _bairro = objetoJson['bairro'];
      _localidade = objetoJson['localidade'];
      _uf = objetoJson['uf'];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Consumo de Recursos: API CEP'),
        backgroundColor: Colors.black,
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                labelText: 'Entre com o CEP:',
              ),
              style: TextStyle(
                fontSize: 18,
              ),
              controller: _textEditingControllerCep,
            ),
            ElevatedButton(
              onPressed: _buscaCep,
              child: Text('Buscar CEP'),
            ),
            Padding(
              padding: const EdgeInsets.only(top:15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Endereço: $_logradouro'),
                  Text('Complemento: $_complemento'),
                  Text('Bairro: $_bairro'),
                  Text('Localidade: $_localidade'),
                  Text('UF: $_uf'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
