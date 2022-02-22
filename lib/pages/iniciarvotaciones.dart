import 'package:flutter/material.dart';
import 'package:votaciones2/pages/personero.dart';

class iniciarvotaciones extends StatelessWidget {
  const iniciarvotaciones({Key? key}) : super(key: key);

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
                      MaterialPageRoute(builder: (context)=> personero()));
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
