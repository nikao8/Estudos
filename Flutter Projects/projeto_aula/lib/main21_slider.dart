import 'package:flutter/material.dart';

main() => runApp(MaterialApp(
      home: AppSlider(),
    ));

class AppSlider extends StatefulWidget {
  @override
  _AppSliderState createState() => _AppSliderState();
}

class _AppSliderState extends State<AppSlider> {
  double _valorSlider = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('App Slider'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Slider(
              value: _valorSlider,
              min: 0,
              max: 10,
              label: '${_valorSlider.toStringAsFixed(2)}',
              divisions: 10,
              activeColor: Colors.amber,
              inactiveColor: Colors.grey,
              onChanged: (double valorAlterado) {
                setState(() {
                  _valorSlider = valorAlterado;
                });
              },
            ),
            ElevatedButton(
              onPressed: () {
                print('Valor Selecionado: ${_valorSlider.toStringAsFixed(2)}');
              },
              child: Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }
}
