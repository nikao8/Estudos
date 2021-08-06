import 'package:flutter/material.dart';

main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Trabalhando com botões',
      home: Container(
        margin: EdgeInsets.only(top: 60),
        padding: EdgeInsets.all(20),
        color: Colors.blueGrey,
        child: Column(
          // Espaçamento principal:
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            TextButton(
              style: TextButton.styleFrom(
                // Borda arredondada
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)
                ),

                // Foreground color
                primary: Colors.pink,

                // Background color
                backgroundColor: Colors.white,

                padding: 
                  EdgeInsets.symmetric(
                  horizontal: 32,
                  vertical: 32
                  ),
              ),
              onPressed: () {
                print('Executando...');
              },
              child: Text(
                'Botão 1',

                style: TextStyle( 
                  fontSize: 20
                ),
              )
            ),
            const SizedBox(height: 20,), // força um espaçamento 
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.amber,

                onPrimary: Colors.white,
              ),

              onPressed: (){},
              child: Text(
                'Botão 2',
                style: TextStyle(
                  fontSize: 20
                ),
              ),
            ),
            const SizedBox(height: 20,),
            OutlinedButton(
              style: OutlinedButton.styleFrom(
                primary: Colors.black,
                side: BorderSide(
                  width: 1,
                  color: Colors.orange
                )
              ),

              onPressed: (){},
              child: Text(
                'Botão 3',
                style: TextStyle(fontSize: 30),
              ),
            ),

            const SizedBox(height: 20,),
            ElevatedButton.icon( 
              style: ElevatedButton.styleFrom(
                side: BorderSide(
                  width: 1,
                  color: Colors.amber
                ),
                primary: Colors.grey,
                onPrimary: Colors.yellow
              ),
              
              onPressed: (){},
              icon: Icon(
                Icons.add_a_photo,
                color: Colors.white,
              ),
              label: Text('Label do botão')
            ),
            const SizedBox(height: 20,),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                onSurface: Colors.amber
              ),
              onPressed: null,
              child: Text( 
                'Botão desativado',
                style: TextStyle(fontSize: 25),
              )
            )
          ],
        ),
      ),
    ));
