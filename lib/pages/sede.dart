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

var _value;

Widget escogergrados(BuildContext context){

  return Center(
    child: Row(
      children: <Widget>[

        // Contenedor para JARDIN
        Container(
          width: 300,
          height: 300,
          color: Colors.deepOrange,
          child: Card(
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
                Image(
                  image: AssetImage('assets/images/votacioneschiquis.jpg'),
                  width: 100,
                  height: 100  ,
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  child: ButtonBar(
                    alignment: MainAxisAlignment.center,
                    children: <Widget>[
                      FlatButton(
                        textColor: const Color(0xFF6200EE),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) {
                                return ingresar();
                              })
                              //MaterialPageRoute(builder: (context)=> const ingresar())  //Llama la pagina Autenticacionjardin
                          );
                        },
                        child:  const Text("JARDIN"),
                      ),
                    ],
                  ),
                ),
                sedebJ(),
                Text("La opción es $_value")
              ],
            ),
          ),

        ),

        //Contenedor para PRIMERO Y SEGUNDO SEDEB
        Container(
          width: 300,
          height: 300,
          color: Colors.lightGreenAccent,
          child: Card(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            margin: EdgeInsets.all(15),
            elevation: 10,
            child: Column(
              children: <Widget>[
                Image(
                  image: AssetImage('assets/images/primariavotaciones.jpg'),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  child: Text('PRIMERO y SEGUNDO'),
                ),
                sedeb(),
              ],
            ),
          ),
        ),

        // Contenedor para PRIMARIA SEDEB tercero, cuarto y quinto
        Container(
          width: 300,
          height: 300,
          color: Colors.deepPurpleAccent,
          child: Card(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            margin: EdgeInsets.all(15),
            elevation: 10,
            child: Column(
              children: <Widget>[
                Image(
                  image: AssetImage('assets/images/votacioneschiquis.jpg'),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  child: Text('PRIMARIA SEDEA'),
                ),
                sedeaprimaria(),
              ],
            ),
          ),
        ),

        // Contenedor para SECUNDARIA SEDE A
        Container(
          width: 300,
          height: 300,
          color: Colors.amber,
          child: Card(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            margin: EdgeInsets.all(15),
            elevation: 10,
            child: Column(
              children: <Widget>[
                Image(
                  image: AssetImage('assets/images/votacioneschiquis.jpg'),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  child: Text('SECUNDARIA'),
                ),
                sedeAsecundaria(),
              ],
            ),
          ),
        ),

      ]
    ),
  );
}

Widget sedebJ(){

  return PopupMenuButton(
    onSelected: (value){
      setState((){
        _value = value;
      });
    },
    itemBuilder: (context) => [
      const PopupMenuItem(
        child: Text("Jardin"),
        value: 1,
      ),
      const PopupMenuItem(
        child: Text("Preescolar"),
        value: 2,
      ),
      const PopupMenuItem(
        child: Text('Transición'),
        value: 3,
      ),
    ],
  );
}


Widget sedebjj(){
  WhyFarther _selection;

  return PopupMenuButton<WhyFarther>(
    //onSelected: (WhyFarther result) {
    // setState(() {
    //    _selection = result;
    //    print ("opción");
    //  });
    //},
    onSelected: EscogerOpcion,
    itemBuilder: (BuildContext context) => <PopupMenuEntry<WhyFarther>>[
      const PopupMenuItem<WhyFarther>(
        value: WhyFarther.Jardin,
        child: Text('Jardín'),
      ),
      const PopupMenuItem<WhyFarther>(
        value: WhyFarther.Preescolar,
        child: Text('Preescolar'),
      ),
      const PopupMenuItem<WhyFarther>(
        value: WhyFarther.Transicion,
        child: Text('Transición'),
      ),
    ],
  );
}

void EscogerOpcion(WhyFarther){
//  if (WhyFarther == WhyFarther.Jardin){
//    print("JARDIN");
//  }else if (WhyFarther == WhyFarther.Preescoar) {
//    print("PREESCOLAR");
//  }else if (WhyFarther == WhyFarther.Transicion) {
//    print("TRANSICION");
//  }
}

Widget sedeb(){
  Primaria _selection;

  return PopupMenuButton<Primaria>(
    onSelected: (Primaria result) {
      setState(() {
        _selection = result;
      });
    },
    itemBuilder: (BuildContext context) => <PopupMenuEntry<Primaria>>[
      const PopupMenuItem<Primaria>(
        value: Primaria.Primero,
        child: Text('Primero'),
      ),
      const PopupMenuItem<Primaria>(
        value: Primaria.Segundo,
        child: Text('Segundo'),
      ),
    ],
  );
}

Widget sedeaprimaria(){
  primariasedea _selection;

  return PopupMenuButton<primariasedea>(
    onSelected: (primariasedea result) {
      setState(() {
        _selection = result;
      });
    },
    itemBuilder: (BuildContext context) => <PopupMenuEntry<primariasedea>>[
      const PopupMenuItem<primariasedea>(
        value: primariasedea.Tercero,
        child: Text('Tercero'),
      ),
      const PopupMenuItem<primariasedea>(
        value: primariasedea.Cuarto,
        child: Text('Cuarto'),
      ),
      const PopupMenuItem<primariasedea>(
        value: primariasedea.Quinto,
        child: Text('Quinto'),
      ),
    ],
  );
}

Widget sedeAsecundaria(){
  secundaria _selection;

  return PopupMenuButton<secundaria>(
    onSelected: (secundaria result) {
      setState(() {
        _selection = result;
      });
    },
    itemBuilder: (BuildContext context) => <PopupMenuEntry<secundaria>>[
      const PopupMenuItem<secundaria>(
        value: secundaria.Sexto,
        child: Text('Sexto'),
      ),
      const PopupMenuItem<secundaria>(
        value: secundaria.Septimo,
        child: Text('Séptimo'),
      ),
      const PopupMenuItem<secundaria>(
        value: secundaria.Octavo,
        child: Text('Octavo'),
      ),
      const PopupMenuItem<secundaria>(
        value: secundaria.Noveno,
        child: Text('Noveno'),
      ),
      const PopupMenuItem<secundaria>(
        value: secundaria.Decimo,
        child: Text('Décimo'),
      ),
      const PopupMenuItem<secundaria>(
        value: secundaria.Once,
        child: Text('Once'),
      ),
    ],
  );
}

void setState(Null Function() param0) {
}

void choiceAction(String choice){
  print("OPCION");
}