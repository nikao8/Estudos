// Stateful Widget
// Com estado

import 'package:flutter/material.dart';

main() => runApp(MaterialApp(
      home: AppDinamico(),
    ));

class AppDinamico extends StatefulWidget {
  @override
  _AppDinamicoState createState() => _AppDinamicoState();
}

class _AppDinamicoState extends State<AppDinamico> {
  // Lógica:
  String _nomeDemonstracao = 'Teste';
  String _titulo = 'Meu App Stateful';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_titulo),
        backgroundColor: Colors.amber,
      ),
      body: Container(
        // Esse widget Center() centraliza tudo que esta contido na tela.
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(_nomeDemonstracao),
              ElevatedButton(
                onPressed: () {
                  // Set state necessário para fazer alteraçoes deste tipo na tela!
                  setState(() {
                    _nomeDemonstracao = 'Nicolas M';
                  });
                  print('Botão pressionado! $_nomeDemonstracao');
                },
                child: Text('Clique aqui para alterar o nome!'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
