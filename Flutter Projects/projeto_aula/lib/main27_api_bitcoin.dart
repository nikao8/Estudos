import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

main() => runApp(MaterialApp(
      home: Bitcoin(),
      debugShowCheckedModeBanner: false,
    ));

class Bitcoin extends StatefulWidget {
  @override
  _BitcoinState createState() => _BitcoinState();
}

class _BitcoinState extends State<Bitcoin> {
  String _valor = '0';

  _buscaValor() async {
    var response = await http.get(Uri.https('blockchain.info', '/pt/ticker'));

    Map<String, dynamic> objetoJson = json.decode(response.body);

    setState(() {
      _valor = objetoJson['BRL']['15m'].toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text(
          'Cotação Bitcoin API',
        ),
      ),
      body: Container(
        child: Padding(
          padding: EdgeInsets.all(0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Image.asset(
                  'images/bitcoin.jpg',
                  fit: BoxFit.fitWidth,
                ),
                Padding(
                  padding: EdgeInsets.only(top: 30, bottom: 15),
                  child: Text(
                    'Valor do Bitcoin: R\$ $_valor',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: _buscaValor,
                  child: Text('Buscar'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
