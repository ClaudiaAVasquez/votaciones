import 'package:flutter/material.dart';
import 'package:votaciones2/pages/iniciarvotaciones.dart';
import 'package:votaciones2/pages/personero.dart';

final leeUsuario = TextEditingController();
final leePassword = TextEditingController();

var usuario ="";
var password = "";

class ingresar extends StatelessWidget {
  const ingresar({Key? key, required this.usu, required this.pass}) : super(key: key);
  final String usu, pass;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Autenticación"),
      ),
      body: cuerpo(usu: usu, pass: pass),
    );
  }
}

class cuerpo extends StatefulWidget {
  const cuerpo({Key? key, required this.usu, required this.pass}) : super(key: key);
  final String usu, pass;

  @override
  State<StatefulWidget> createState() {
    return cuerpoState(usu: usu, pass: pass);
  }
}

class cuerpoState extends State<cuerpo>{
  cuerpoState({Key? key, required this.usu, required this.pass});
  final String usu, pass;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
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
            Sign_in(context),
            campousuario(context),
            campocontrasena(context),
            const SizedBox(height: 10,),
            botonentrar(context, usu, pass)
          ],
        ),
      ),
    );
  }
}

Widget Sign_in(BuildContext context) {
  return const Text("Iniciar Sesión",
    style: TextStyle(color: Colors.black87, fontSize: 35.0, fontWeight: FontWeight.bold),);
}

Widget campousuario(BuildContext context){

  return Container(
      padding: const EdgeInsets.all(20),      //Darle bordes al TextField
      child: TextField(
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.pink,
                )
            ),
            labelText: "Nombre de usuario",
            hintText: "Usuario",
            prefixIcon: Icon(Icons.person),
            fillColor: Colors.white,
            filled: true,
          ),
        controller: leeUsuario,
      ),
  );
}

Widget campocontrasena(BuildContext context){

  return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      child: TextField(
          obscureText: true,
          decoration: InputDecoration(
            hintText: "Contraseña",
            prefixIcon: Icon(Icons.lock),
            fillColor: Colors.white,
            filled: true,
          ),
        controller: leePassword,
      )
  );
}

Widget botonentrar(BuildContext context, String usu, String pass) {
  return FlatButton(
      color: Colors.blueAccent,
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      onPressed: () {
        usuario = leeUsuario.text;
        password = leePassword.text;
        if ((usuario == usu) && (password == pass)){
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const iniciarvotaciones()),
          );
        }
      },
      child: Text(
          "Ingresar", style: TextStyle(fontSize: 25, color: Colors.white))
  );
}