// Padding e margin: Espaçamentos internos e exertos...
import 'package:flutter/material.dart';

main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  title: 'Padding e Margin',
  home: Container( 
    // EdgeInsets.all(): para todos os lados.
    // EdgeInsets.fromLTRB(): Left Top Right Bottom.
    // EdgeInsets.only(top: 20) ou EdgeInsets.only(bottom: 30, right: 30) e por ai vai.. Insere padding apenas em um parametro
    padding: EdgeInsets.only(top: 60, left: 20, right: 20),
    
    // EdgeInsets.all(): para todos os lados.
    // EdgeInsets.fromLTRB(): Left Top Right Bottom.
    // EdgeInsets.only(top: 20) ou EdgeInsets.only(bottom: 30, right: 30) e por ai vai.. Insere padding apenas em um parametro
    margin: EdgeInsets.all(40),

    decoration: BoxDecoration( 
      // Add cor na caixa
      color: Colors.blueGrey,

      border: Border.all( 
        width: 5,
        color: Colors.amber
      )
    ),

    child: Column(
      children: [
        Text(
          'Texto de exemplo para o App',
          
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.normal,
            decoration: TextDecoration.none,
            color: Colors.white
          ),
        )
      ],
    ),
  ),
));
