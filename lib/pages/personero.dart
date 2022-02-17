//https://www.youtube.com/watch?v=RyIdsu4JUBo

//import 'dart:js';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class personero extends StatelessWidget{
  const personero({Key? key}) : super(key : key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("PERSONERO"),
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: GridView.count(
            crossAxisCount: 3,      //Cuántos elementos tendra de forma horizontal máximo acomada 3 por fila
            crossAxisSpacing: 3,
            mainAxisSpacing: 3,
            children: [
              MyButton('assets/images/AnaSofiaArtunduaga.jpg', context),
              MyButton('assets/images/AndresCamiloChipatecua.jpg', context),
              MyButton('assets/images/PaulaAndreaVillamil.jpg', context),
              MyButton('assets/images/AshelyKatheryneTenza.jpg', context),
              MyButton('assets/images/EvelynSaenz.jpg', context),
              MyButton('assets/images/Votoenblanco.jpg', context),
           ]
        ),
      ),
    );
  }

  RaisedButton MyButton(String imagen,BuildContext context) {
    return RaisedButton(
              child: Image.asset(
                  imagen,
                  height: 180, width: 180,
              ),
              onPressed: () {
                mostrarAlerta(context);
                //Navigator.push(
                //    context,
                //    MaterialPageRoute(builder: (context) => const personero()),
                //)
              },
            );
  }
}

void mostrarAlerta(BuildContext context) {
  showDialog(
      barrierDismissible: false,                  //No quita el cuadro de Dialogo al darle clic por fuera de este
      builder: (context){
        return AlertDialog(
          title: Text("Votación"),
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
                print("Si");
                Navigator.pop(context);
              },
              child: Text("Si"),
            )
          ],
        );
      },
      context: context);
}
