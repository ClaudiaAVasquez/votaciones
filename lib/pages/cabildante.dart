//https://www.youtube.com/watch?v=RyIdsu4JUBo

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class cabildante extends StatelessWidget{
  const cabildante({Key? key}) : super(key : key);

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
              MyButton('assets/images/MariaValentinaGonzalez.jpg'),
              MyButton('assets/images/KarolValentinaDiaz.jpg'),
              MyButton('assets/images/SharickMelissaMoreno.jpg'),
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
