import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

main() => runApp(MaterialApp(
      home: Entradas(),
    ));

class Entradas extends StatefulWidget {
  @override
  _EntradasState createState() => _EntradasState();
}

class _EntradasState extends State<Entradas> {
  TextEditingController _textEditingController = new TextEditingController();
  String _resposta = 'Resultado';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Entrada de dados'),
        backgroundColor: Colors.amber,
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(20),

            //Input
            child: TextField(
              // .text, .number, emailAddress...
              keyboardType:
                  TextInputType.text, // Abre o teclado com alfabeto no input

              // Informação no campo de input
              decoration: InputDecoration(
                labelText: 'Digite algo.',
              ),

              enabled: true, // Habilitar ou desabilitar o campo
              maxLength: 5, // Limita quantidades de caracteres no input

              // maxLength Controlador:

              // .enforced: Não deixa passar a qtd de digitos pré determinada
              // .none: libera a digitação com aviso visual
              maxLengthEnforcement: MaxLengthEnforcement.enforced,

              // Estilo do texto do input
              style: TextStyle(
                fontSize: 20,
                color: Colors.redAccent,
              ),

              obscureText: false, // True ou False, util para campos de password

              controller: _textEditingController, // Pode ser qualquer nome...
            ),
          ),
          ElevatedButton(
            onPressed: () {
              print('Valor digitado pelo user: ${_textEditingController.text}');

              setState(() {
                _resposta = _textEditingController.text;
              });
            },
            child: Text('Submit'),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Text(
              _resposta,
              style: TextStyle(
                fontSize: 20,
                color: Colors.blueGrey,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
