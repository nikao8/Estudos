import 'package:flutter/material.dart';
import 'views/tela_notas.dart';

void main() => runApp(Agenda());

class Agenda extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.purple),
      home: TelaNotas(),
    );
  }
}
