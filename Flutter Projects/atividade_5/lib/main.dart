import 'package:flutter/material.dart';
import 'personagens.dart';
main() => runApp(MaterialApp(
      home: AppDisney(),
      debugShowCheckedModeBanner: false,
    ));

class AppDisney extends StatefulWidget {
  @override
  _AppDisneyState createState() => _AppDisneyState();
}

class _AppDisneyState extends State<AppDisney> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text(
          'Personagens Disney: Mickey',
        ),
      ),
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                  
                  children: [
                    Image.asset(
                      'images/mickey_vetorizado.png',
                      scale: 2.5,
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
                        MaterialPageRoute(builder: (context) => Pluto(),),
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
