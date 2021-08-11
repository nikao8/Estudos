// Import da biblioteca Material
import 'package:flutter/material.dart';

main() => runApp(MaterialApp(
  title: 'Criando Colunas',
  home: Container(
    color: Colors.grey,
    child: Column( // Widget dentro de outra widget utilizando 'child', só pode 1 widget
      children: [ // Dentro do children é possivel varios outros widgets...
        Text('Texto 1'),
        Text('Texto 2'),
        Text('Texto 3')
      ],
    ),
  ),
));
