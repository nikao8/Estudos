import 'package:atividade_5/main.dart';
import 'package:flutter/material.dart';
// ------------------------------------PLUTO------------------------------------
class Pluto extends StatefulWidget {
  @override
  _PlutoState createState() => _PlutoState();
}

class _PlutoState extends State<Pluto> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text(
          'Personagens Disney: Pluto',
        ),
      ),
      body: Center(
        child: Container(
          child: Column(
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Image.asset(
                  'images/disney_vetorizada.png',
                  scale: 8,
                ),
              ]),
              Padding(
                padding: const EdgeInsets.only(bottom: 29.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      'images/pluto.png',
                      scale: 15,
                    )
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Woody(),),
                      );
                    },
                    child: Text('Próximo'),
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
// ------------------------------------WOODY------------------------------------
class Woody extends StatefulWidget {
  @override
  _WoodyState createState() => _WoodyState();
}

class _WoodyState extends State<Woody> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: Text(
          'Personagens Disney: Woody',
        ),
      ),
      body: Center(
        child: Container(
          child: Column(
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Image.asset(
                  'images/disney_vetorizada.png',
                  scale: 8,
                ),
              ]),
              Padding(
                padding: const EdgeInsets.only(bottom: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      'images/woody.png',
                      scale: 7,
                    )
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Buzz(),),
                      );
                    },
                    child: Text('Próximo'),
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
// ------------------------------------BUZZ------------------------------------
class Buzz extends StatefulWidget {
  @override
  _BuzzState createState() => _BuzzState();
}

class _BuzzState extends State<Buzz> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text(
          'Personagens Disney: Buzz',
        ),
      ),
      body: Center(
        child: Container(
          child: Column(
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Image.asset(
                  'images/disney_vetorizada.png',
                  scale: 8,
                ),
              ]),
              Padding(
                padding: const EdgeInsets.only(bottom: 5.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      'images/buzz.png',
                      scale: 12,
                    )
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => AppDisney(),),
                      );
                    },
                    child: Text('Início'),
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