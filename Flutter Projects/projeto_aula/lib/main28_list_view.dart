import 'package:flutter/material.dart';

main() => runApp(MaterialApp(
      home: Home(),
    ));

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List _produtos = [];

  void _carregarItens() {
    // Evitando repetição de itens
    _produtos = [];

    for (var i = 0; i <= 8; i++) {
      // Map para armazenar as informações
      Map<String, dynamic> item = new Map();
      item['titulo'] = 'Titulo $i Lorem Ipsum dolor sit amet';
      item['descricao'] = 'Descrição $i ipsum dolor sit amet';

      _produtos.add(item);
    }
  }

  @override
  Widget build(BuildContext context) {
    _carregarItens(); // Carregando os itens
    return Scaffold(
      appBar: AppBar(
        title: Text('App ListView'),
        backgroundColor: Colors.blueAccent,
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                  itemCount: _produtos.length,
                  itemBuilder: (context, indice) {
                    return ListTile(
                      title: Text(_produtos[indice]['titulo']),
                      subtitle: Text(_produtos[indice]['descricao']),
                    );
                  }),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        currentIndex: 0,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Feed',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: 'Chat',
          ),
        ],
      ),
    );
  }
}
