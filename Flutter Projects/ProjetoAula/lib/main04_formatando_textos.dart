import 'package:flutter/material.dart';

main() => runApp(MaterialApp(
  title: 'Formatando Textos',
  home: Container( 
    color: Colors.white,

    child: Column(
      children: [
        Text(
          'Texto exemplo para o widget',
          style: TextStyle( 
            fontSize: 20,
            fontStyle: FontStyle.normal,
            // Peso(negrito)
            fontWeight: FontWeight.normal,
            // Espaçamento
            letterSpacing: 2,
            //Retirar sublinhado
            decoration: TextDecoration.none,
            // Cor no texto
            color: Colors.black
          ),
        )
      ],
    ),
  ),
));
