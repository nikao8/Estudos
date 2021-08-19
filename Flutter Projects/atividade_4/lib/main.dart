import 'package:flutter/material.dart';
import 'dart:math';

main() => runApp(MaterialApp(
      home: AppJokenpo(),
    ));

class AppJokenpo extends StatefulWidget {
  @override
  _AppJokenpoState createState() => _AppJokenpoState();
}

class _AppJokenpoState extends State<AppJokenpo> {
  String? _resultado = 'Resultado aparecerá aqui!';
  String? _escolhaApp = 'images/padrao.png';
  int _numVitorias = 0;
  int _numDerrotas = 0;
  int _numEmpates = 0;

  GerarNovaPartida(String escolha) {
    setState(() {
      var _escolhaRandomApp = new Random();
      var _resultadoEscolhaRandom = _escolhaRandomApp.nextInt(3);
      // Adotando 0 = pedra | 1 = papel | 2 = tesoura
      if (_resultadoEscolhaRandom == 0) {
        _escolhaApp = 'images/pedra.png';
      } else if (_resultadoEscolhaRandom == 1) {
        _escolhaApp = 'images/papel.png';
      } else {
        _escolhaApp = 'images/tesoura.png';
      }

      if (escolha == 'pedra' && _resultadoEscolhaRandom == 2) {
        _resultado = 'Você venceu!';
        _numVitorias++;
      } else if (escolha == 'pedra' && _resultadoEscolhaRandom == 0) {
        _resultado = 'Empate!';
        _numEmpates++;
      } else if (escolha == 'pedra' && _resultadoEscolhaRandom == 1) {
        _resultado = 'Você perdeu!';
        _numDerrotas++;
      }

      if (escolha == 'papel' && _resultadoEscolhaRandom == 0) {
        _resultado = 'Você venceu!';
        _numVitorias++;
      } else if (escolha == 'papel' && _resultadoEscolhaRandom == 1) {
        _resultado = 'Empate!';
        _numEmpates++;
      } else if (escolha == 'papel' && _resultadoEscolhaRandom == 2) {
        _resultado = 'Você perdeu!';
        _numDerrotas++;
      }

      if (escolha == 'tesoura' && _resultadoEscolhaRandom == 1) {
        _resultado = 'Você venceu';
        _numVitorias++;
      } else if (escolha == 'tesoura' && _resultadoEscolhaRandom == 2) {
        _resultado = 'Empate!';
        _numEmpates++;
      } else if (escolha == 'tesoura' && _resultadoEscolhaRandom == 0) {
        _resultado = 'Você perdeu!';
        _numDerrotas++;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Jokenpo'),
        backgroundColor: Colors.blue.shade600,
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 15),
              child: Text(
                'Escolha do App:',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    _escolhaApp!,
                    scale: 1.2,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    _resultado!,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      GerarNovaPartida('pedra');
                    });
                  },
                  child: Image.asset(
                    'images/pedra.png',
                    scale: 1.5,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      GerarNovaPartida('papel');
                    });
                  },
                  child: Image.asset(
                    'images/papel.png',
                    scale: 1.5,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      GerarNovaPartida('tesoura');
                    });
                  },
                  child: Image.asset(
                    'images/tesoura.png',
                    scale: 1.5,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 20,
                bottom: 5,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Vitórias: ${_numVitorias}',
                    style: TextStyle(
                      color: Colors.green.shade600,
                      fontSize: 17,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Empates: ${_numEmpates}',
                    style: TextStyle(
                      color: Colors.yellow.shade700,
                      fontSize: 17,
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Derrotas: ${_numDerrotas}',
                  style: TextStyle(
                    color: Colors.red.shade600,
                    fontSize: 17,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      _escolhaApp = 'images/padrao.png';
                      _numVitorias = 0;
                      _numEmpates = 0;
                      _numDerrotas = 0;
                      setState(() {});
                    },
                    child: Text(
                      'Reset',
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
