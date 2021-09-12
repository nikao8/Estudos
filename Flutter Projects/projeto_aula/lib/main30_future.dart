import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

main() => runApp(MaterialApp(
      home: Principal(),
    ));

class Principal extends StatefulWidget {
  @override
  _PrincipalState createState() => _PrincipalState();
}

class _PrincipalState extends State<Principal> {
  Future<Map<String, dynamic>> buscarValor() async {
    var response = await http.get(Uri.https('blockchain.info', '/pt/ticker'));

    Map<String, dynamic> objetoJson = json.decode(response.body);
    return objetoJson;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Trabalhando com Future'),
        backgroundColor: Colors.black,
      ),
      body: FutureBuilder<Map>(
        /*
          Uma Future recebe um sucesso ou um erro !, desta forma é possivel utilizar
          um switch para tratas esses retornos.
        */

        future: buscarValor(),
        // O snapshot estabelece uma comunicação com os retornos
        builder: (context, snapshot) {
          String resultado = '';
          switch (snapshot.connectionState) {
            case ConnectionState.waiting:
              resultado = 'Aguardando...';
              break;
            case ConnectionState.done:
              if (snapshot.hasError) {
                resultado = 'Erro nos dados!.';
              } else {
                double valor = snapshot.data?['BRL']['buy'];
                resultado = 'Valor do bitcoin ${valor.toString()}';
              }
              break;
            default:
          }
          return Center(
            child: Text(
              resultado,
              style: TextStyle(fontSize: 15),
            ),
          );
        },
      ),
    );
  }
}
