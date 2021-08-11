import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: AppMediaAritimetica(),
  ));
}

class AppMediaAritimetica extends StatefulWidget {
  @override
  _AppMediaAritimeticaState createState() => _AppMediaAritimeticaState();
}

class _AppMediaAritimeticaState extends State<AppMediaAritimetica> {
  TextEditingController _n1 = new TextEditingController();
  TextEditingController _n2 = new TextEditingController();
  String _resultado = "Resultado:";

  void calcularMedia() {
    setState(() {
      double num1 = double.parse(_n1.text);
      double num2 = double.parse(_n2.text);
      double media = (num1 + num2) / 2;
      
      _resultado = '${media.toString()}';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Atividade 1: Cálculo Média Aritimética',
          style: TextStyle(fontSize: 16),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.blue[200],
            ),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Text(
                    'Média\nAritimética',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 20, top: 15, bottom: 15, right: 10),
                  child: Image.asset(
                    'images/icon.jpg',
                    scale: 20,
                  ),
                )
              ],
            ),
          ),
          Row(
            //crossAxisAlignment: CrossAxisAlignment.center, // Não funciona
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    left: 80, top: 20, bottom: 10, right: 20),
                child: Text(
                  'Preencha os campos abaixo:',
                  //textAlign: TextAlign.center, // Também não funciona.
                  style: TextStyle(color: Colors.blue, fontSize: 15),
                ),
              ),
            ],
          ),
          Container(
            child: Padding(
              padding: EdgeInsets.all(20),
              //Input
              child: TextField(
                cursorColor: Colors.grey,
                keyboardType: TextInputType.number,

                // Informação no campo de input
                decoration: InputDecoration(
                  labelText: 'Informe o primeiro valor.',
                  labelStyle: TextStyle(color: Colors.grey[700]),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.grey,
                    ),
                  ),
                ),

                enabled: true, // Habilitar ou desabilitar o campo
                // Estilo do texto do input
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.grey,
                ),

                obscureText:
                    false, 

                controller: _n1,
              ),
            ),
          ),
          Container(
            child: Padding(
              padding: EdgeInsets.all(20),
              //Input

              child: TextField(
                cursorColor: Colors.grey,
                keyboardType: TextInputType.number,

                // Informação no campo de input
                decoration: InputDecoration(
                  labelText: 'Informe o segundo valor.',
                  labelStyle: TextStyle(color: Colors.grey[700]),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.grey,
                    ),
                  ),
                ),

                enabled: true, // Habilitar ou desabilitar o campo
                // Estilo do texto do input
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.grey,
                ),

                obscureText:
                    false,

                controller: _n2,
              ),
            ),
          ),
          SizedBox(
            width: 320,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: Colors.amber, onPrimary: Colors.white),
              
              onPressed: calcularMedia,
              
              child: Text(
                'Calcular',
                style: TextStyle(fontSize: 17),
              ),
            ),
          ),
          const SizedBox(height: 10,),
          Container(
            width: 320,
            height: 55,
            //padding: EdgeInsets.all(20),
            alignment: Alignment.center,
            child: InputDecorator(
              decoration: InputDecoration(
                labelText: '',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
              child: Center(
                child: Text(
                  _resultado,
                  style: TextStyle(color: Colors.red, fontSize: 15,),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
