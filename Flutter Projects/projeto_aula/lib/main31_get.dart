import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart';

main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MeuAppGet(),
    ));

class MeuAppGet extends StatefulWidget {
  @override
  _MeuAppGetState createState() => _MeuAppGetState();
}

class _MeuAppGetState extends State<MeuAppGet> {
  final url = 'https://jsonplaceholder.typicode.com/posts';
  var _postsJson = [];

  void buscaPosts() async {
    try {
      final response = await get(Uri.parse(url));
      final infoJson = jsonDecode(response.body) as List;

      setState(() {
        _postsJson = infoJson;
      });
    } catch (error) {}
  }

  @override
  Widget build(BuildContext context) {
    // INICIANDO A FUNCTION
    buscaPosts();
    return Scaffold(
      appBar: AppBar(
        title: Text('Trabalhando com metodo POST'),
        backgroundColor: Colors.purple.shade300,
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: _postsJson.length,
                itemBuilder: (context, indice) {
                  final post = _postsJson[indice];
                  return ListTile(
                    title: Text(
                      'Título: ${post['title']}\n',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.redAccent,
                      ),
                    ),
                    subtitle: Text(
                      'Descrição: ${post['body']}\n',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.brown,
                      ),
                    ),
                  );
                },
              ),
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
              label: 'chat',
            )
          ]),
    );
  }
}
