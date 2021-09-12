//List View
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: Home(),
    ));

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List _produtos = [];

  //Função para gerar os dados dinamicamente
  void _carregarItens() {
    //Caso os itens fiquem se repetindo com o hot reload
    _produtos = [];
    for (int i = 0; i <= 8; i++) {
      //
      //Map para guardar as informações em um ciclo de 8x
      Map<String, dynamic> item = Map();
      item["titulo"] = "Título do Produto ${i + 1} ";
      item["descricao"] = "Descrição do Produto ${i + 1}";

      //Adicionando os iten no Map (chave e valor)
      _produtos.add(item);
    }
  }

  @override
  Widget build(BuildContext context) {
    _carregarItens();

    return Scaffold(
      appBar: AppBar(
        title: Text("App ListView"),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: ListView.builder(

            //Quantidade de itens
            itemCount: _produtos.length,
            //construção da Lista, baseados no contexto e marcados por um índice
            itemBuilder: (context, indice) {
              //
              //Retornando o valores do Map
              return ListTile(
                //
                //Clicando na Lista utilizando o parâmetro onTap e onLongPress
                onTap: () {
                  //Teste
                  //print('Clicou no $indice');
                  //showdialog() exibibe um widget de alerta
                  showDialog(
                      context: context,
                      builder: (context) {
                        //O parâmetro builder vai retornar um alert
                        return AlertDialog(
                          //
                          //Definindo um título
                          title: Text(_produtos[indice]["titulo"]),
                          titlePadding: EdgeInsets.all(15),
                          titleTextStyle: TextStyle(
                            color: Colors.redAccent,
                            fontSize: 20,
                          ),

                          //Definindo o conteúdo
                          content: Text(_produtos[indice]["descricao"]),
                          contentPadding: EdgeInsets.all(15),
                          backgroundColor: Colors.brown[50],
                          //Definindo widgets
                          actions: [
                            TextButton(
                              onPressed: () {
                                print('Tudo ok!!!');
                                Navigator.pop(context);
                              },
                              child: Center(
                                child: Text(
                                  'Ok',
                                  style: TextStyle(
                                    fontSize: 20,
                                  ),
                                ),
                              ),
                            )
                          ],
                        );
                      });
                },
                onLongPress: () {
                  //print('Clicou e segurou o $indice');
                },
                //Teste
                //Exibindo os valores
                title: Text(_produtos[indice]["titulo"]),
                subtitle: Text(_produtos[indice]["descricao"]),
              );
            }),
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