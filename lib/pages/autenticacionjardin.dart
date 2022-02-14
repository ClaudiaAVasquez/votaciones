import 'package:flutter/material.dart';

class ingresar extends StatelessWidget{
  const ingresar({Key? key}) : super(key : key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("Autenticación"),
      ),
      body: cuerpo(),
    );
  }
}

Widget cuerpo(){
  return Container(
    decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage ('assets/images/escudoNC.jpg'),
          fit: BoxFit.contain,
        )
    ),
    child: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Sign_in(),
          campousuario(),
          campocontrasena(),
          const SizedBox(height: 10,),
          botonentrar()
        ],
      ),
    ),
  );
}

Widget Sign_in() {
  return const Text("Iniciar Sesión",
    style: TextStyle(color: Colors.black87, fontSize: 35.0, fontWeight: FontWeight.bold),);
}

Widget campousuario(){
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),      //Darle bordes al TextField
    child: const TextField(
        decoration: InputDecoration(
          hintText: "Usuario",
          prefixIcon: Icon(Icons.person),
          fillColor: Colors.white,
          filled: true,
        )
    ),
  );
}

Widget campocontrasena(){
  return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      child: const TextField(
          obscureText: true,
          decoration: InputDecoration(
            hintText: "Contraseña",
            prefixIcon: Icon(Icons.lock),
            fillColor: Colors.white,
            filled: true,
          )
      )
  );
}

Widget botonentrar(){
  return FlatButton(
      color: Colors.blueAccent,
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      onPressed: (){},
      child: Text("Ingresar", style: TextStyle(fontSize: 25, color: Colors.white))
  );
}