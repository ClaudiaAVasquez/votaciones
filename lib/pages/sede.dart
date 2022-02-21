import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:votaciones2/pages/autenticacionjardin.dart';
import 'package:flutter/rendering.dart';

import 'cursos.dart';

class sede extends StatelessWidget {
  const sede({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Grados"),
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {},
        ),
      ),
      body: escogergrados(),
    );
  }
}

class escogergrados extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return escogergradosState();
  }
}

String _value="--";

class escogergradosState extends State<escogergrados> {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    TextEditingController controlador = TextEditingController(text: "");
    _value = "--";
    return Center(
        child: Row(
          children: [

            //Card para GRADO PREJARDIN
            Flexible(child: Card(

              // Con esta propiedad modificamos la forma de nuestro card
              // Aqui utilizo RoundedRectangleBorder para proporcionarle esquinas circulares al Card
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),

                // Con esta propiedad agregamos margen a nuestro Card
                // El margen es la separación entre widgets o entre los bordes del widget padre e hijo
                margin: EdgeInsets.all(15),

                // Con esta propiedad agregamos elevación a nuestro card
                // La sombra que tiene el Card aumentará
                elevation: 10,
                child: Column(
                  children: <Widget>[
                    Container(
                      height: 200,
                      width: 200,
                      color: Colors.white,
                      child: Image.asset(
                        'assets/images/votacioneschiquis.jpeg', height: 200,
                        width: 200,),
                    ),
                    Container(
                      child: const Text("PREESCOLAR",
                          style: TextStyle(fontSize: 25, color: Colors.black)),
                          padding: EdgeInsets.all(20),
                    ),
                    PopupMenuButton(
                      color: Colors.white,
                      elevation: 20,
                      enabled: true,
                      onSelected: (value) {
                        setState(() {
                          _value = value
                              .toString(); //Convierte el obj value en String
                          print(_value);
                          controlador.text = _value;
                          if (_value == 'PreJardin') {
                            Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context)=> cursos(controlador.text)));
                          } else if (_value == 'Jardin') {
                            Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context)=> cursos(controlador.text)));
                          } else if (_value == 'Transicion') {
                            Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context)=> cursos(controlador.text)));
                          }
                        });
                      },
                      itemBuilder: (context) =>
                      [
                        const PopupMenuItem(
                          child: Text("Pre-Jardín"),
                          value: "PreJardin",
                        ),
                        const PopupMenuItem(
                          child: Text("Jardín"),
                          value: "Jardin",
                        ),
                        const PopupMenuItem(
                          child: Text('Transición'),
                          value: "Transicion",
                        ),
                      ],
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(),
                        child: TextField(
                          controller: controlador,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            fillColor: Colors.grey[300],
                            filled: true,
                          ),
                        )
                    ),
                    //Contenedor con un TextButton para testear
                    //Container(
                    //child: TextButton(
                    //style: TextButton.styleFrom(
                    //textStyle: const TextStyle(fontSize: 20),
                    //),
                    //onPressed: () {
                    //Navigator.push(
                    //context,
                    //MaterialPageRoute(builder: (context) => const ingresar()),
                    //);
                    //},
                    //child: const Text('Login'),
                    //),
                    //)
                  ],
                )
            ),
            ),
          ],
        )
    );
  }
}