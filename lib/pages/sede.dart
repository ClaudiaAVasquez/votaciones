import 'dart:js';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:votaciones2/pages/autenticacionjardin.dart';


enum WhyFarther { Jardin, Preescolar, Transicion}
enum Primaria { Primero, Segundo}
enum primariasedea {Tercero, Cuarto, Quinto}
enum secundaria {Sexto, Septimo, Octavo, Noveno, Decimo, Once}

class sede extends StatelessWidget{
  const sede({Key? key}) : super(key : key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("Grados"),
      ),
      body: escogergrados(context),
    );
  }
}

var _value="";

Widget escogergrados(BuildContext context){
  return Center(
      child: Row(
          children: [
            //Card para GRADO JARDIN
            Card(
              // Con esta propiedad modificamos la forma de nuestro card
              // Aqui utilizo RoundedRectangleBorder para proporcionarle esquinas circulares al Card
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),

              // Con esta propiedad agregamos margen a nuestro Card
              // El margen es la separación entre widgets o entre los bordes del widget padre e hijo
              margin: EdgeInsets.all(15),

              // Con esta propiedad agregamos elevación a nuestro card
              // La sombra que tiene el Card aumentará
              elevation: 10,
              child: Column(
                children: <Widget>[
                  Container(
                    height:200,
                    width: 200,
                    color: Colors.deepOrange,
                    child: Image.asset('assets/images/votacioneschiquis.jpeg',height: 200, width: 200,),
                  ),
                  PopupMenuButton(
                    color: Colors.yellowAccent,
                    elevation: 20,
                    enabled: true,
                    onSelected: (value){
                      setState((){
                        _value = value;
                      });
                    },
                    itemBuilder: (context) => [
                      const PopupMenuItem(
                        child: Text("Jardin"),
                        value: "Jardin",
                      ),
                      const PopupMenuItem(
                        child: Text("Preescolar"),
                        value: "Preescolar",
                      ),
                      const PopupMenuItem(
                        child: Text('Transición'),
                        value: "Transicion",
                      ),
                    ],
                  ),
                ],
              ),
            ),

            //Card para grados PRIMERO Y SEGUNDO
            Card(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              margin: EdgeInsets.all(15),
              elevation: 10,
              child: Column(
                children: <Widget>[
                  Container(
                    height: 200,
                    width: 200,
                    color: Colors.lightGreen,
                    child: Image.asset('assets/images/primariavotaciones.jpeg',height: 180, width: 180,),
                  )
                ],
              ),
            ),


            //Card para grados TERCERO, CUARTO, QUINTO
            Card(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              margin: EdgeInsets.all(15),
              elevation: 10,
              child: Column(
                children: <Widget>[
                  Container(
                    height: 200,
                    width: 200,
                    color: Colors.lightGreen,
                    child: Image.asset('assets/images/votaciones3a5.jpg',height: 180, width: 180,),
                  )
                ],
              ),
            ),


            //Card para SECUNDARIA
            Card(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              margin: EdgeInsets.all(15),
              elevation: 10,
              child: Column(
                children: <Widget>[
                  Container(
                    height: 200,
                    width: 200,
                    color: Colors.lightGreen,
                    child: Image.asset('assets/images/votacionessecundaria.jpg',height: 180, width: 180,),
                  )
                ],
              ),
            ),

          ]
      ),
  );
}

void setState(Null Function() param0) {
}