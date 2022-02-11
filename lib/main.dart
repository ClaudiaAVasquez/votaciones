import 'dart:ffi';
import 'package:flutter/material.dart';
import 'package:votaciones2/pages/autenticacion.dart';

//import 'dart:ffi';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Votaciones Gobierno Escolar IED Nueva Colombia',
      home: MyHomePage(title: 'Widgets'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Votaciones Gobierno Escolare"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('Inicio',),
            ElevatedButton(
              child: const Text("Comenzar"),
              onPressed: () {
                Navigator.push(
                context,
                MaterialPageRoute(builder: (context)=> const ingresar())  //Llama la pagina Autenticacion
                );
              }
            )
          ]
        )
      )
    );
  }
}
