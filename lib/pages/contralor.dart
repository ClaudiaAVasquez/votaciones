//https://www.youtube.com/watch?v=RyIdsu4JUBo

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'cabildante.dart';

class contralor extends StatelessWidget{
  const contralor({Key? key}) : super(key : key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("CONTRALOR"),
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: GridView.count(
            crossAxisCount: 3,      //Cuántos elementos tendra de forma horizontal máximo acomada 3 por fila
            crossAxisSpacing: 5,
            mainAxisSpacing: 5,
            children: [
              MyButton('assets/images/DannaSofiaSalamanca.jpg', context),
              MyButton('assets/images/DianiNataliMuñoz.jpg', context),
              MyButton('assets/images/JoelStevenMedina.jpg', context),
              MyButton('assets/images/AngieLorenaDiaz.jpg', context),
              MyButton('assets/images/AlexandraUrdaneta.jpg', context),
              MyButton('assets/images/SarayNicoleElegalde.jpg', context),
              MyButton('assets/images/KarolDanielaLopez.jpg', context),
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
          title: Text("Votación Contralor"),
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
                //Navigator.pop(context);
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const cabildante()),
                );
              },
              child: Text("Si"),
            )
          ],
        );
      },
      context: context);
}