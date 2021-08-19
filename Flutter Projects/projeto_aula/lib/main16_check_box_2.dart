import 'package:flutter/material.dart';

main() => runApp(MaterialApp(
      home: MeuCheckBox(),
    ));

class MeuCheckBox extends StatefulWidget {
  @override
  _MeuCheckBoxState createState() => _MeuCheckBoxState();
}

class _MeuCheckBoxState extends State<MeuCheckBox> {
  bool _pizzaMarguerita = false;
  bool _pizzaCalabreza = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('App com caixas de seleção'),
        backgroundColor: Colors.indigo,
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            CheckboxListTile(
              title: Text('Pizza Marguerita'),
              subtitle: Text('tomate, cebola, manjericão, queijo'),

              activeColor: Colors.black, // Aplica cor

              selected: true,

              secondary: Icon(Icons.add_box),
              value: _pizzaMarguerita,
              onChanged: (bool? valor) {
                setState(() {
                  _pizzaMarguerita = valor!;  
                });
              },
            ),

            CheckboxListTile(
              title: Text('Pizza Calabreza'),
              subtitle: Text('calabreza, cebola, manjericão, queijo'),

              activeColor: Colors.black, // Aplica cor

              selected: true,

              secondary: Icon(Icons.add_box),
              value: _pizzaCalabreza,
              onChanged: (bool? valor) {
                setState(() {
                  _pizzaCalabreza = valor!;  
                });
              },
            ),

            ElevatedButton(
              onPressed:(){
                print('Pedido:\nPizza de Marguerita: $_pizzaMarguerita\nPizza Calabreza: $_pizzaCalabreza');
              },
              child: Text('Fazer Pedido'),
            ),
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
