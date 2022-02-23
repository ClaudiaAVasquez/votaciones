import 'package:flutter/material.dart';
import 'package:votaciones2/pages/personero.dart';
import 'dart:io';

class iniciarvotaciones extends StatelessWidget {
  const iniciarvotaciones({Key? key, required this.archivo}) : super(key: key);
  final File archivo;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("INICIAR VOTACIÓN"),
        ),
        body: Center(
            child: RaisedButton(
                    child: Text("INICIAR VOTACIÓN", style: TextStyle(fontSize: 25,)),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context)=> personero(archivo: archivo)));
                }
            ),
        ),
      floatingActionButton: FloatingActionButton(
      onPressed: () {
        Text("Prueba");
      },
        tooltip: 'FINALIZAR VOTACIÓN',
        child: const Icon(Icons.exit_to_app_rounded),
    ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
