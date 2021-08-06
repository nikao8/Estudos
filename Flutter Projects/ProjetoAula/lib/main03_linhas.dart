// Import da biblioteca Material
import 'package:flutter/material.dart';

main() => runApp(MaterialApp(
  title: 'Criando Colunas',
  home: Container(
    color: Colors.grey,
    child: Row( // Widget dentro de outra widget utilizando 'child', só pode 1 widget
      children: [ // Dentro do children é possivel varios outros widgets...
        Text('T1'),
        Text('T2'),
        Text('T3')
      ],
    ),
  ),
));
