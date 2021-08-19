import 'package:flutter/material.dart';
main() => runApp(MaterialApp(
      home: MeuCheckBox(),
    ));

class MeuCheckBox extends StatefulWidget {
  @override
  _MeuCheckBoxState createState() => _MeuCheckBoxState();
}

class _MeuCheckBoxState extends State<MeuCheckBox> {
  bool _selecaoCheckBox = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('App com caixa de seleção'),
        backgroundColor: Colors.indigo,
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Text('Escolha'),
            // aqui entra o check box
            Checkbox(
                value: _selecaoCheckBox,
                onChanged: (bool? valor) {
                  setState(() {
                    _selecaoCheckBox = valor!;
                  });
                })
          ],
        ),
      ),
    );
  }
}