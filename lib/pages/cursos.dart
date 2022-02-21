//Listas
//https://www.youtube.com/watch?v=uhnPQUDbfoo

//import 'dart:js';

import 'package:flutter/material.dart';
import 'package:votaciones2/pages/autenticacionjardin.dart';

class cursos extends StatelessWidget {
  final String texto;                    //final: variable que no puede ser cambiada
  const cursos(this.texto, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Curso"),
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {},
        ),
      ),
      body: escogercurso(texto),
    );
  }
}

class escogercurso extends StatefulWidget {
  escogercurso(String texto);

  @override
  State<StatefulWidget> createState() {
    return escogercursoState();
  }
}

class escogercursoState extends State<escogercurso> {

  escogercurso(String texto) {
    // TODO: implement escogercurso
    throw UnimplementedError();
  }
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

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: const Text("Escoger Curso para votar"),
      ),
      body:
        //if (texto == "PreJardin"){
            ListView.builder(
              itemCount: _cursosprejardin.length,
              itemBuilder: (context, index){
                return ListTile(
                  onTap: (){
                    print(_cursosprejardin[index].cursopre);
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context)=> ingresar()),  //Llama la pagina Sede
                    );
                  },
                  title: Text(_cursosprejardin[index].cursopre),
                  leading: CircleAvatar(
                    child: Text(_cursosprejardin[index].cursopre.substring(10,11)),
                  ),
                  trailing: Icon(Icons.arrow_forward_ios),
                );
              }),
       // }
    );
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



