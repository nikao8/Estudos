import 'package:flutter/material.dart';

main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,

  title: 'Padding no widget',
  home: Container(
    decoration: BoxDecoration( 
      color: Colors.blueGrey,
      border: Border.all( 
        width: 5,
        color: Colors.white,
      )
    ),
    child: Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'Texto 1',
            style: TextStyle(
              fontSize: 20,
              decoration: TextDecoration.none,
              color: Colors.redAccent,
            ),  
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'Texto 2',
            style: TextStyle(
              fontSize: 20,
              decoration: TextDecoration.none,
              color: Colors.redAccent
            ),    
          ),
        ),
        Padding(   
          padding:EdgeInsets.all(20),
          child: Text(
            'Texto 3',
            style: TextStyle(
              fontSize: 20,
              decoration: TextDecoration.none,
              color: Colors.redAccent
            ),    
          ),
        ),
      ],
    ),
  ),
));
