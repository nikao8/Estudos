import 'package:flutter/material.dart';

main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  title: 'Alinhamentos',
  home: Container(
    // Setando margens
    margin: EdgeInsets.only(top: 60),
    // Setando borda e cor do container
    decoration: BoxDecoration(
      border: Border.all(
        width: 5,
        color: Colors.blue
      )
    ),

    child: Row(
      children: [
        Text(
          'T 01',
          style: TextStyle(
            decoration: TextDecoration.none,
            fontSize: 30
          ),
        ),
        Text(
          'T 03',
          style: TextStyle(
            decoration: TextDecoration.none,
            fontSize: 30
          ),
        ),      
        Text(
          'T 03',
          style: TextStyle(
            decoration: TextDecoration.none,
            fontSize: 30
          ),
        ),          
      ],
      mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Faz o alinhamento do meu widget
      //mainAxisAlignment: MainAxisAlignment.spaceEvenly, 
      
      // Alinhamento secundario
      crossAxisAlignment: CrossAxisAlignment.center,
    ),
  ),
));
