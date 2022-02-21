//https://www.youtube.com/watch?v=RyIdsu4JUBo

//import 'dart:js';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:votaciones2/pages/contralor.dart';

String banderavotacion = '0';

class personero extends StatelessWidget {
  const personero({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("PERSONERO"),
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {},
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.help),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: () {},
          ),
        ],
      ),
      body: votarpersoneros(),
    );
  }
}


class votarpersoneros extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return votarpersonerosState();
  }
}

class votarpersonerosState extends State<votarpersoneros>{

  int _contadorpersonero1 = 0;
  int _contadorpersonero2 = 0;
  int _contadorpersonero3 = 0;
  int _contadorpersonero4 = 0;
  int _contadorpersonero5 = 0;
  int _contadorpersonero6 = 0;

  @override
  Widget build(BuildContext context) {

    return Padding(padding: EdgeInsets.all(10),
      child: GridView.count(
          crossAxisCount: 3,      //Cuántos elementos tendra de forma horizontal máximo acomada 3 por fila
          crossAxisSpacing: 3,
          mainAxisSpacing: 3,
          children: <Widget>[
            RaisedButton(
                color: Colors.pinkAccent[100],
                child: Image.asset('assets/images/AnaSofiaArtunduaga.jpg'),
                onPressed: () {
                  mostrarAlerta(context, banderavotacion);
                  if (banderavotacion == '1'){
                    _contadorpersonero1++;
                    print(banderavotacion);
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const contralor()),
                    );
                  }
                }
            ),

            RaisedButton(
                color: Colors.deepPurpleAccent,
                child: Image.asset('assets/images/AndresCamiloChipatecua.jpg'),
                onPressed: () {
                  mostrarAlerta(context, banderavotacion);
                    _contadorpersonero2++;
                }
            ),

            RaisedButton(
              color: Colors.pink,
              child: Image.asset('assets/images/PaulaAndreaVillamil.jpg'),
              onPressed: () {
                mostrarAlerta(context, banderavotacion);
                _contadorpersonero3++;
              }
            ),

          RaisedButton(
              color: Colors.lightGreenAccent,
              child: Image.asset('assets/images/AshelyKatheryneTenza.jpg'),
              onPressed: () {
                mostrarAlerta(context, banderavotacion);
                _contadorpersonero4++;
              }
         ),

          RaisedButton(
              color: Colors.red,
              child: Image.asset('assets/images/EvelynSaenz.jpg'),
              onPressed: () {
                mostrarAlerta(context, banderavotacion);
                _contadorpersonero5++;
              }
          ),

          RaisedButton(
              color: Colors.white,
              child: const Text(
                'VOTO EN BLANCO',
                style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 30)),
              onPressed: () {
                mostrarAlerta(context, banderavotacion);
                _contadorpersonero6++;
              }
          ),

            Text("Contador01 $_contadorpersonero1"),
            Text("Contador02 $_contadorpersonero2"),
            Text("Contador03 $_contadorpersonero3"),
            Text("Contador04 $_contadorpersonero4"),
            Text("Contador05 $_contadorpersonero5"),
            Text("Contador06 $_contadorpersonero6")
      ]
    ),
  );
  }
}


void mostrarAlerta(BuildContext context, banderavotacion) {
  showDialog(
      barrierDismissible: false,                  //No quita el cuadro de Dialogo al darle clic por fuera de este
      builder: (context){
        return AlertDialog(
          title: Text("Votación Personero"),
          content: Text("Estas votando por xxxxxx, estas seguro?"),
          actions: <Widget>[
            TextButton(
                onPressed: () {
                  print("No");
                  banderavotacion = '0';
                  Navigator.pop(context);
                },
                child: Text("No")
            ),
            TextButton(
              onPressed: () {
                print("Si");
                banderavotacion = '1';
                return banderavotacion;
                //Navigator.pop(context);
                //Navigator.push(
                  //context,
                //MaterialPageRoute(builder: (context) => const contralor()),
                //);
              },
              child: Text("Si"),
            )
          ],
        );
      },
      context: context);
}


