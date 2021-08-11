import 'package:flutter/material.dart';

main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,

  home: Scaffold(
    // Criando uma estrutura | Titulo/Corpo/Rodapé
    appBar: AppBar(
      title: Text('Minha aplicação'),
      backgroundColor: Colors.amber,
    ),
    body: Padding(
      padding: EdgeInsets.all(50),
      child: Text(
        'Conteudo do app',
        style: TextStyle(
          fontSize: 20
        ),
      ),
    ), 
    bottomNavigationBar: BottomAppBar(
      color: Colors.lightBlue,
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Row(
          // Array de widgets, usando children...
          children: [
            
            Text(
              'Texto 1 bottom',
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Texto 2 bottom',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
            ),
            Text(
              'Texto 3 bottom',
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
              ),
            ),
         ],
        ),
      ),
    ),
  ),
));
