//import 'dart:js';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:votaciones2/pages/autenticacionjardin.dart';

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

String _value="--";
Widget escogergrados(BuildContext context){
  _value="--";
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
                    color: Colors.deepOrange,
                    elevation: 20,
                    enabled: true,
                    onSelected: (value){
                      setState((){
                        _value = value.toString(); //Convierte el obj value en String
                        print(_value);
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
                  Container(
                      child: const Text("JARDIN", style: TextStyle(fontSize: 25, color: Colors.black)),
                  ),

                  Container(
                    child: TextButton(
                      style: TextButton.styleFrom(
                        textStyle: const TextStyle(fontSize: 20),
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const ingresar()),
                        );
                      },
                      child: const Text('Login'),
                    ),
                  )


                ],
              )
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
                  ),
                  PopupMenuButton(
                    color: Colors.yellowAccent,
                    elevation: 20,
                    enabled: true,
                    onSelected: (value){
                      setState((){
                        _value = value.toString(); //Convierte el obj value en String
                        print(_value);
                      });
                    },
                    itemBuilder: (context) => [
                      const PopupMenuItem(
                        child: Text("Primero"),
                        value: "Primero",
                      ),
                      const PopupMenuItem(
                        child: Text("Segundo"),
                        value: "Segundo",
                      ),
                    ],
                  ),
                  Container(
                    child: const Text("PRIMERO y SEGUNDO", style: TextStyle(fontSize: 20, color: Colors.black)),
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
                  ),
                  PopupMenuButton(
                    color: Colors.lightGreenAccent,
                    elevation: 20,
                    enabled: true,
                    onSelected: (value){
                      setState((){
                        _value = value.toString(); //Convierte el obj value en String
                        print(_value);
                      });
                    },
                    itemBuilder: (context) => [
                      const PopupMenuItem(
                        child: Text("Tercero"),
                        value: "Tercero",
                      ),
                      const PopupMenuItem(
                        child: Text("Cuarto"),
                        value: "Cuarto",
                      ),
                      const PopupMenuItem(
                        child: Text("Quinto"),
                        value: "Quinto",
                      ),
                    ],
                  ),
                  Container(
                    child: const Text("TERCERO, CUARTO, QUINTO", style: TextStyle(fontSize: 15, color: Colors.black)),
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
                    color: Colors.cyanAccent,
                    child: Image.asset('assets/images/votacionessecundaria.jpg',height: 180, width: 180,),
                  ),
                  PopupMenuButton(
                    color: Colors.cyanAccent,
                    elevation: 20,
                    enabled: true,
                    onSelected: (value){
                      setState((){
                      _value = value.toString(); //Convierte el obj value en String
                      print(_value);
                      });
                    },
                    itemBuilder: (context) => [
                      const PopupMenuItem(
                        child: Text("Sexto"),
                        value: "Sexto",
                      ),
                      const PopupMenuItem(
                        child: Text("Séptimo"),
                        value: "Septimo",
                      ),
                      const PopupMenuItem(
                        child: Text("Octavo"),
                        value: "Octavo",
                      ),
                      const PopupMenuItem(
                        child: Text("Noveno"),
                        value: "Noveno",
                      ),
                      const PopupMenuItem(
                        child: Text("Décimo"),
                        value: "Decimo",
                      ),
                      const PopupMenuItem(
                        child: Text("Once"),
                        value: "Once",
                      ),
                    ],
                  ),
                  Container(
                    child: const Text("SECUNDARIA", style: TextStyle(fontSize: 25, color: Colors.black)),
                  )
              ],
             ),
           ),
          ],
      )
  );
}

void setState(Null Function() param0) {
}