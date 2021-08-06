// Stateless Widget
// Sem estado

import 'package:flutter/material.dart';

main() => runApp(AppEstatico());

class AppEstatico extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: WidgetImutavel(),
    );
  }
}

class WidgetImutavel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Meu App Stateless'),
        backgroundColor: Colors.amber,
      ),

      body: Padding(
        padding: EdgeInsets.all(20),
        child: Text('Conteudo do app'),
      ),

      bottomNavigationBar: BottomAppBar( 
        color: Colors.lightBlue,
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,

            children: [
              Text('Txt 1'),
              Text(
                'Txt 2',
                style: TextStyle( 
                  fontSize: 30,
                  color: Colors.white,
                ),
              ),
              Text('Txt 3'),
            ],
          ),
        ),
      ),
    );
  }
}

/*
class WidgetImutavel extends StatefulWidget {
  const WidgetImutavel({ Key? key }) : super(key: key);

  @override
  _WidgetImutavelState createState() => _WidgetImutavelState();
}

class _WidgetImutavelState extends State<WidgetImutavel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
    );
  }
}
// É POSSIVEL FAZER DESTA MANEIRA, digitar st e selecionar na janela stateless ou stateful
// desta forma é feito automatico pelo vsc.
*/