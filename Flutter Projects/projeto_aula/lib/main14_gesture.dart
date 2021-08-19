import 'package:flutter/material.dart';

main() => runApp(MaterialApp(
      home: Gesture(),
    ));

class Gesture extends StatefulWidget {
  @override
  _GestureState createState() => _GestureState();
}

class _GestureState extends State<Gesture> {
  String _personagem = '';
  var _image = AssetImage('images/none_icon.png');

  personagemEscolhido(String personagem) {
    if (personagem == 'menino1') {
      _personagem = 'Você escolheu o João!';
      _image = AssetImage('images/menino1_icon.png');
    } else if (personagem == 'menina') {
      _personagem = 'Você escolheu a Maria!';
      _image = AssetImage('images/menina_icon.png');
    } else {
      _personagem = 'Você escolheu o José';
      _image = AssetImage('images/menino2_icon.png');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gesture App'),
        backgroundColor: Colors.amber,
      ),
      body: Padding(
        padding: EdgeInsets.all(20),

        // Primeira uma coluna
        child: Column(
          children: [
            // Agora a linha
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // Detecção de toque na tela
                GestureDetector(
                  onTap: () {
                    setState(() {
                      personagemEscolhido('menino1');
                    });
                  },
                  child: Image.asset(
                    'images/menino1.png',
                    width: 100,
                  ),
                ),

                GestureDetector(
                  onTap: () {
                    setState(() {
                      personagemEscolhido('menina');
                    });
                  },
                  child: Image.asset(
                    'images/menina.png',
                    width: 100,
                  ),
                ),

                GestureDetector(
                  onTap: () {
                    setState(() {
                      personagemEscolhido('menino2');
                    });
                  },
                  child: Image.asset(
                    'images/menino2.png',
                    width: 100,
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: 20),
              child: Column(
                children: [
                  Text(
                    'Escolha um personagem:',
                    style: TextStyle(fontSize: 20),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 20,
                      bottom: 20,
                    ),
                    child: Column(
                      children: [
                        Image(
                          image: _image,
                          width: 100,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 20,
              ),
              child: Text(
                _personagem,
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.amber,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
