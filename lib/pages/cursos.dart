//Listas
//https://www.youtube.com/watch?v=uhnPQUDbfoo

//import 'dart:js';

import 'package:flutter/material.dart';
import 'package:votaciones2/pages/autenticacionjardin.dart';

final List<cursosprejardin> _cursosprejardin = [
  cursosprejardin("PreJardin01"),
  cursosprejardin("PreJardin02"),
  cursosprejardin("PreJardin03"),
];

final List<cursosjardin> _cursosjardin = [
  cursosjardin("Jardin01"),
  cursosjardin("Jardin02"),
  cursosjardin("Jardin03"),
  cursosjardin("Jardin04"),
  cursosjardin("Jardin05"),
  cursosjardin("Jardin06"),
];

final List<cursostransicion> _cursostransicion = [
  cursostransicion("Transición01"),
  cursostransicion("Transición02"),
  cursostransicion("Transición03"),
  cursostransicion("Transición04"),
  cursostransicion("Transición05"),
  cursostransicion("Transición06"),
  cursostransicion("Transición07"),
  cursostransicion("Transición08"),
];

final List<cursosprimero> _cursoprimero = [
  cursosprimero("101"),
  cursosprimero("102"),
  cursosprimero("103"),
  cursosprimero("104"),
  cursosprimero("105"),
  cursosprimero("106"),
  cursosprimero("107"),
  cursosprimero("108"),
  cursosprimero("109"),
  cursosprimero("110"),
];

final List<cursossegundo> _cursosegundo = [
  cursossegundo("201"),
  cursossegundo("202"),
  cursossegundo("203"),
  cursossegundo("204"),
  cursossegundo("205"),
  cursossegundo("206"),
  cursossegundo("207"),
  cursossegundo("208"),
  cursossegundo("209"),
];

final List<cursostercero> _cursotercero = [
  cursostercero("301"),
  cursostercero("301"),
  cursostercero("301"),
  cursostercero("301"),
  cursostercero("301"),
  cursostercero("301"),
];

final List<cursoscuarto> _cursocuarto = [
  cursoscuarto("401"),
  cursoscuarto("402"),
  cursoscuarto("403"),
  cursoscuarto("404"),
  cursoscuarto("405"),
  cursoscuarto("406"),
];

final List<cursosquinto> _cursoquinto = [
  cursosquinto("501"),
  cursosquinto("502"),
  cursosquinto("503"),
  cursosquinto("504"),
  cursosquinto("505"),
  cursosquinto("506"),
];

final List<cursossexto> _cursosexto = [
  cursossexto("601"),
  cursossexto("602"),
  cursossexto("603"),
  cursossexto("604"),
  cursossexto("605"),
  cursossexto("606"),
];

final List<cursosseptimo> _cursoseptimo = [
  cursosseptimo("701"),
  cursosseptimo("702"),
  cursosseptimo("703"),
  cursosseptimo("704"),
  cursosseptimo("705"),
  cursosseptimo("706"),
  cursosseptimo("707"),
];

final List<cursosoctavo> _cursooctavo = [
  cursosoctavo("801"),
  cursosoctavo("802"),
  cursosoctavo("803"),
  cursosoctavo("804"),
  cursosoctavo("805"),
  cursosoctavo("806"),
  cursosoctavo("807"),
];

final List<cursosnoveno> _cursonoveno = [
  cursosnoveno("901"),
  cursosnoveno("902"),
  cursosnoveno("903"),
  cursosnoveno("904"),
  cursosnoveno("905"),
  cursosnoveno("906"),
  cursosnoveno("907"),
];

final List<cursosdecimo> _cursodecimo = [
  cursosdecimo("1001"),
  cursosdecimo("1002"),
  cursosdecimo("1003"),
  cursosdecimo("1004"),
  cursosdecimo("1005"),
  cursosdecimo("1006"),
  cursosdecimo("1007"),
];

final List<cursosonce> _cursoonce = [
  cursosonce("1101"),
  cursosonce("1102"),
  cursosonce("1103"),
  cursosonce("1104"),
  cursosonce("1105"),
  cursosonce("1106"),
  cursosonce("1107"),
];

class cursos extends StatelessWidget {
  const cursos({Key? key, required this.texto}) : super(key: key);
  final String texto;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("CURSO"),
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {},
        ),
      ),
      body: escogercurso(texto: texto),
    );
  }
}

class escogercurso extends StatefulWidget {

  const escogercurso({Key? key, required this.texto}) : super(key: key);
  final String texto;

  @override
  State<StatefulWidget> createState() {
    return escogercursoState(texto: texto);
  }
}

class escogercursoState extends State<escogercurso> {
  escogercursoState({Key? key, required this.texto});
  final String texto;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: const Text("Escoger Curso para votar"),
      ),
      body: funciongrado(texto),
   );
  }
}

funciongrado(texto) {

  if (texto == "PreJardin"){
    return ListView.builder(
      itemCount: _cursosprejardin.length,
      itemBuilder: (context, index){
        return ListTile(
          onTap: (){
            print(_cursosprejardin[index].cursopre);
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context)=> ingresar(usu:"Preescolar", pass:"prejartrans")),  //Llama la pagina Sede
            );
          },
          title: Text(_cursosprejardin[index].cursopre),
          leading: CircleAvatar(
            child: Text(_cursosprejardin[index].cursopre.substring(10,11)),
          ),
          trailing: Icon(Icons.arrow_forward_ios),
        );
      });
    } else if (texto == "Jardin"){
        return ListView.builder(
          itemCount: _cursosjardin.length,
          itemBuilder: (context, index){
            return ListTile(
              onTap: (){
                print(_cursosjardin[index].cursojardin);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context)=> ingresar(usu:"Preescolar", pass:"prejartrans")),  //Llama la pagina Sede
                );
              },
              title: Text(_cursosjardin[index].cursojardin),
              leading: CircleAvatar(
                child: Text(_cursosjardin[index].cursojardin.substring(7,8)),
              ),
              trailing: Icon(Icons.arrow_forward_ios),
            );
        });
    } else if (texto == "Transicion") {
    return ListView.builder(
        itemCount: _cursostransicion.length,
        itemBuilder: (context, index) {
          return ListTile(
            onTap: () {
              print(_cursostransicion[index].cursotransicion);
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => ingresar(usu:"Preescolar", pass:"prejartrans")), //Llama la pagina Sede
              );
            },
            title: Text(_cursostransicion[index].cursotransicion),
            leading: CircleAvatar(
              child: Text(_cursostransicion[index].cursotransicion.substring(11,12)),
            ),
            trailing: Icon(Icons.arrow_forward_ios),
          );
        });
    }
}


class cursosprejardin {
  String cursopre='';

  cursosprejardin(cursopre){
    this.cursopre = cursopre;
  }
}

class cursosjardin{
  String cursojardin="";

  cursosjardin(cursojardin){
    this.cursojardin = cursojardin;
  }
}

class cursostransicion{
  String cursotransicion="";

  cursostransicion(cursotransicion){
    this.cursotransicion = cursotransicion;
  }
}

class cursosprimero{
  String cursoprimero="";

  cursosprimero(cursoprimero){
    this.cursoprimero = cursoprimero;
  }
}

class cursossegundo{
  String cursosegundo="";

  cursossegundo(cursosegundo){
    this.cursosegundo = cursosegundo;
  }
}

class cursostercero{
  String cursotercero="";

  cursostercero(cursotercero){
    this.cursotercero = cursotercero;
  }
}

class cursoscuarto{
  String cursocuarto="";

  cursoscuarto(cursocuarto){
    this.cursocuarto = cursocuarto;
  }
}

class cursosquinto{
  String cursoquinto="";

  cursosquinto(cursoquinto){
    this.cursoquinto = cursoquinto;
  }
}

class cursossexto{
  String cursosexto="";

  cursossexto(cursosexto){
    this.cursosexto = cursosexto;
  }
}

class cursosseptimo{
  String cursoseptimo="";

  cursosseptimo(cursoseptimo){
    this.cursoseptimo = cursoseptimo;
  }
}

class cursosoctavo{
  String cursooctavo="";

  cursosoctavo(cursooctavo){
    this.cursooctavo = cursooctavo;
  }
}

class cursosnoveno{
  String cursonoveno="";

  cursosnoveno(cursonoveno){
    this.cursonoveno = cursonoveno;
  }
}

class cursosdecimo{
  String cursodecimo="";

  cursosdecimo(cursodecimo){
    this.cursodecimo = cursodecimo;
  }
}

class cursosonce{
  String cursoonce="";

  cursosonce(cursoonce){
    this.cursoonce = cursoonce;
  }
}


















