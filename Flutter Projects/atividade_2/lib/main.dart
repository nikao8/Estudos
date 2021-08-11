import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: AppPesoIdeal(),
  ));
}

class AppPesoIdeal extends StatefulWidget {
  @override
  _AppPesoIdealState createState() => _AppPesoIdealState();
}

class _AppPesoIdealState extends State<AppPesoIdeal> {
  // Logica aqui
  TextEditingController _peso = new TextEditingController();
  TextEditingController _altura = new TextEditingController();
  String _resultado = "Resultado:";

  void calcularPesoIdeal() {
    setState(() {
      double peso = double.parse(_peso.text);
      double altura = double.parse(_altura.text);
      double pi = peso / (altura * altura);
      
      _resultado = '${pi.toString()}';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        title: Text(
          'Peso Ideal',
          style: TextStyle(fontSize: 16),
        ),
        backgroundColor: Colors.green,
      ),

      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              
              decoration: BoxDecoration(
                color: Colors.green,
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 30, top: 20, bottom:20, right: 20),
                    child: Text(
                      'Peso Ideal',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 26,
                      ),
                    ),                  
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 30, top: 15, bottom: 15, right: 10),
                    child: Image.asset(
                      'images/balanca.png',
                      scale: 5,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    left: 20, top: 20, bottom: 10, right: 20),
                child: Text(
                  'Cálculo do peso ideal, preencha as informações\nabaixo:',
                  //textAlign: TextAlign.center, // Também não funciona.
                  style: TextStyle(color: Colors.grey, fontSize: 15),
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
                  labelText: 'Entre com o peso: (ex: 70.5)',
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

                controller: _peso,
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
                  labelText: 'Entre com a altura: (ex: 1.70)',
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

                controller: _altura,
              ),
            ),
          ),
          SizedBox(
            width: 100,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: Colors.green, onPrimary: Colors.white),
              
              onPressed: calcularPesoIdeal,
              
              child: Text(
                'Calcular',
                style: TextStyle(fontSize: 17),
              ),
            ),
          ),          
          const SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: Container(
                child: Center(
                  child: Text(
                    _resultado,
                    style: TextStyle(color: Colors.black, fontSize: 17,),
                  ),
                ),
              ),
          ),
        ],
      ),
    );
  }
}
