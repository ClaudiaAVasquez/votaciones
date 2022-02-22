//https://www.youtube.com/watch?v=RyIdsu4JUBo

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:votaciones2/pages/iniciarvotaciones.dart';

import 'personero.dart';

class cabildante extends StatelessWidget{
  const cabildante({Key? key}) : super(key : key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("CABILDANTE"),
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: GridView.count(
            crossAxisCount: 3,      //Cuántos elementos tendra de forma horizontal máximo acomada 3 por fila
            crossAxisSpacing: 5,
            mainAxisSpacing: 5,
            children: [
              MyButton('assets/images/MariaValentinaGonzalez.jpg', context),
              MyButton('assets/images/KarolValentinaDiaz.jpg', context),
              MyButton('assets/images/SharickMelissaMoreno.jpg', context),
              MyButton('assets/images/Votoenblanco.jpg', context),
            ]
        ),
      ),
    );
  }

  RaisedButton MyButton(String imagen, BuildContext context) {
    return RaisedButton(
        child: Image.asset(
          imagen,
          height: 180, width: 180,
        ),
        onPressed: () {
          mostrarAlerta(context);
        }
    );
  }
}


void mostrarAlerta(BuildContext context) {
  showDialog(
      barrierDismissible: false,                  //No quita el cuadro de Dialogo al darle clic por fuera de este
      builder: (context){
        return AlertDialog(
          title: Text("Votación Cabildante"),
          content: Text("Estas votando por xxxxxx, estas seguro?"),
          actions: <Widget>[
            TextButton(
                onPressed: () {
                  print("No");
                  Navigator.pop(context);
                },
                child: Text("No")
            ),
            TextButton(
              onPressed: () {
                //print("Si");
                //Navigator.pop(context);
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const iniciarvotaciones()),
                );
              },
              child: Text("Si"),
            )
          ],
        );
      },
      context: context);
}

