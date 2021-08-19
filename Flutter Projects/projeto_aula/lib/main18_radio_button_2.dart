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
        child: Column(
          children: [
            RadioListTile(
                title: Text('Opção 1'),
                subtitle: Text('Subtítulo 1'),
                value: 1,
                groupValue: _opcao,
                onChanged: (int? selecao) {
                  print('Seleção: $selecao');
                  setState(() {
                    _opcao = selecao;
                  });
                }),
            RadioListTile(
                title: Text('Opção 2'),
                subtitle: Text('Subtítulo 2'),
                value: 2,
                groupValue: _opcao,
                onChanged: (int? selecao) {
                  print('Seleção: $selecao');
                  setState(() {
                    _opcao = selecao;
                  });
                }),
            ElevatedButton(
                onPressed: () {
                  print('Opção: $_opcao');
                },
                child: Text('Submit')),
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
