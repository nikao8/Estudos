import 'package:flutter/material.dart';

main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  title: 'Trabalhando com imagens',
  home: Container(
    margin: EdgeInsets.only(top: 60),
    decoration: BoxDecoration(
      color: Colors.white,
      
      border: Border.all(
        width: 3,
        color: Colors.amber

      ),
    ),

    // Child para o widget Image
    child: Image.asset(
      // Especificar o caminho da imagem
      'images/forest.jpg',

      // Definição de preenchimento de imagem.
      
      // fit: BoxFit.cover, // Cobre todo o espaçamento cortando a imagem.
      // fit: BoxFit.contain, // Valor padrão
      // fit: BoxFit.fill, // Preenche o espaçamento esticando a imagem.
      // fit: BoxFit.fitHeight, // Preenche a altura e mantem largura pela proporção.
      // fit: BoxFit.fitWidth, // Preenche a largura e mantem altura pela proporção.
      //fit: BoxFit.none, // Não faz ajustes.
      fit: BoxFit.contain,
    ),
  ),
));
