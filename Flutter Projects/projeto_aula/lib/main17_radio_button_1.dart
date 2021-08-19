import 'package:flutter/material.dart';

main() => runApp(MaterialApp(
      home: MeuCheckBox(),
    ));

class MeuCheckBox extends StatefulWidget {
  @override
  _MeuCheckBoxState createState() => _MeuCheckBoxState();
}

class _MeuCheckBoxState extends State<MeuCheckBox> {
  int? _opcao;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('App com caixas de seleção'),
        backgroundColor: Colors.indigo,
      ),
      body: Container(
        child: Row(
          children: [
            Radio(
              value: 1,
              groupValue: _opcao,
              onChanged: (int? selecao) {
                print('Seleção: $selecao');
                setState(() {
                  _opcao = selecao;
                });
              }
            ),
            Text('Opção 1'),

            Radio(
              value: 2,
              groupValue: _opcao,
              onChanged: (int? selecao) {
                print('Seleção: $selecao');
                setState(() {
                  _opcao = selecao;
                });
              }
            ),
            Text('Opção 2'),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        currentIndex: 0,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: 'Feed'),
          BottomNavigationBarItem(icon: Icon(Icons.chat), label: 'Chat'),
        ],
      ),
    );
  }
}
