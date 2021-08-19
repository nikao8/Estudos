import 'package:flutter/material.dart';
import 'dart:math';

main() => runApp(MaterialApp(
  home: AppMegaSena(),
));

class AppMegaSena extends StatefulWidget {
  @override
  _AppMegaSenaState createState() => _AppMegaSenaState();
}

class _AppMegaSenaState extends State<AppMegaSena> {
  String _resultado = 'Resultado aparecerá aqui!';

  void SortearNumerosMegaSena() {
    //List<int>? _arraySorteio;
    var _arraySorteio;
    var randomGenerator = new Random();

    _resultado = '';
    for (var i = 0; i < 6; i++) {
      //print(random.nextInt(100));
      _arraySorteio = randomGenerator.nextInt(100);
      
      if(i == 0){
        _resultado += '[' + _arraySorteio.toString() + ',';
      }
      else if(i == 5){
        _resultado += _arraySorteio.toString() + ']';
      }
      else{
        _resultado += _arraySorteio.toString() + ',';
      }
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text(
          'App Sorteio MegaSena',
          style: TextStyle(
            fontSize: 18,
          ),
        ),
      ),
      body: Container(
        color: Colors.green.shade300,
        child: Container(
          color: Colors.white,
          margin: EdgeInsets.all(12),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 60, bottom: 60, left: 15),
                    child: Image.asset(
                      'images/megasena.png',
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 40,
                    ),
                    child: Text(
                      _resultado,
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.amber.shade600,
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 95),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Colors.green, onPrimary: Colors.white),
                      onPressed: SortearNumerosMegaSena,
                      child: Text('Sortear'),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
