//https://www.youtube.com/watch?v=RyIdsu4JUBo

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
              MyButton('assets/images/DannaSofiaSalamanca.jpg'),
              MyButton('assets/images/DianiNataliMuñoz.jpg'),
              MyButton('assets/images/JoelStevenMedina.jpg'),
              MyButton('assets/images/AngieLorenaDiaz.jpg'),
              MyButton('assets/images/AlexandraUrdaneta.jpg'),
              MyButton('assets/images/SarayNicoleElegalde.jpg'),
              MyButton('assets/images/KarolDanielaLopez.jpg'),
              MyButton('assets/images/Votoenblanco.jpg'),
            ]
        ),
      ),
    );
  }

  RaisedButton MyButton(String imagen) {
    return RaisedButton(
        child: Image.asset(
          imagen,
          height: 180, width: 180,
        ),
        onPressed: () {}
    );
  }
}
