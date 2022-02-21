import 'package:flutter/material.dart';
import 'package:votaciones2/pages/personero.dart';

class ingresar extends StatelessWidget {
  const ingresar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Autenticación"),
      ),
      body: cuerpo(context),
    );
  }
}

class cuerpo extends StatefulWidget {

  cuerpo(BuildContext context);
  @override
  State<StatefulWidget> createState() {
    return cuerpoState();
  }
}

class cuerpoState extends State<cuerpo>{
  final password = TextEditingController();
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
            botonentrar(context)
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

  //final void Function(String) onChanged;

  final usuario= TextEditingController();
  return Container(
      padding: const EdgeInsets.all(20),      //Darle bordes al TextField
      child: const TextField(
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
      ),
  );
}

Widget campocontrasena(BuildContext context){
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

Widget botonentrar(BuildContext context) {
  return FlatButton(
      color: Colors.blueAccent,
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      onPressed: () {
        var usuario;
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const personero()),
        );
      },
      child: Text(
          "Ingresar", style: TextStyle(fontSize: 25, color: Colors.white))
  );
}