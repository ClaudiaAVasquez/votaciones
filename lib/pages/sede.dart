import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:votaciones2/pages/autenticacionjardin.dart';

class sede extends StatelessWidget {
  const sede({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Grados"),
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

class escogergradosState extends State<escogergrados>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
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
                          if (_value == 'Jardin') {
                            _CupertinoJardin(context);
                          } else if (_value == 'Preescolar') {
                            _CupertinoPreescolar(context);
                          } else if (_value == 'Transicion') {
                            _CupertinoTransicion(context);
                          }
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
                        if (_value == 'Primero') {
                          _CupertinoPrimero(context);
                        } else if (_value == 'Segundo') {
                          _CupertinoSegundo(context);
                        }
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
                        if (_value == 'Tercero') {
                          _CupertinoTercero(context);
                        } else if (_value == 'Cuarto') {
                          _CupertinoCuarto(context);
                        } else if (_value == 'Quinto') {
                          _CupertinoQuinto(context);
                        }
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
                        if (_value == 'Sexto') {
                          _CupertinoSexto(context);
                        } else if (_value == 'Septimo') {
                          _CupertinoSeptimo(context);
                        } else if (_value == 'Octavo') {
                          _CupertinoOctavo(context);
                        }else if (_value == 'Noveno') {
                          _CupertinoNoveno(context);
                        }else if (_value == 'Decimo') {
                          _CupertinoDecimo(context);
                        }else if (_value == 'Once') {
                          _CupertinoOnce(context);
                        }
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
  
  void _CupertinoJardin(BuildContext context){
    final jardin = ['Jardin01', 'Jardin02', 'Jardin03', 'Jardin04', 'Jardin05', 'Jardin06'];

    showCupertinoModalPopup(
        context: context,
        builder: (_) {
          return CupertinoActionSheet(
            title: Text("Selecciona el curso"),
            message: Text("Abrir curso para votar"),
            actions: [
              ...List.generate(jardin.length, (index) {
                final String nombre = jardin[index];
                return CupertinoActionSheetAction(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> const ingresar()));
                    },
                    child: Text(nombre),
                );
              }),
            ],
            cancelButton: CupertinoActionSheetAction(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("Cancelar"),
              isDestructiveAction: true,
            ),
          );
    });
  }

  void _CupertinoPreescolar(BuildContext context) {
    final preescolar = ['Preescolar01', 'Preescolar02', 'Preescolar03'];

    showCupertinoModalPopup(
        context: context,
        builder: (_) {
          return CupertinoActionSheet(
            title: Text("Selecciona el curso"),
            message: Text("Abrir curso para votar"),
            actions: [
              ...List.generate(preescolar.length, (index) {
                final String nombre = preescolar[index];
                return CupertinoActionSheetAction(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text(nombre),
                );
              }),
            ],
            cancelButton: CupertinoActionSheetAction(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("Cancelar"),
              isDestructiveAction: true,
            ),
          );
        });
  }

    void _CupertinoTransicion(BuildContext context) {
      final transicion = [
        'Transición01',
        'Transición02',
        'Transición03',
        'Transición04',
        'Transición05',
        'Transición06'
      ];
      showCupertinoModalPopup(
          context: context,
          builder: (_) {
            return CupertinoActionSheet(
              title: Text("Selecciona el curso"),
              message: Text("Abrir curso para votar"),
              actions: [
                ...List.generate(transicion.length, (index) {
                  final String nombre = transicion[index];
                  return CupertinoActionSheetAction(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text(nombre),
                  );
                }),
              ],
              cancelButton: CupertinoActionSheetAction(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("Cancelar"),
                isDestructiveAction: true,
              ),
            );
          });
    }

  void _CupertinoPrimero(BuildContext context) {
    final primero = [
      '101',
      '102',
      '103',
      '104',
      '105',
      '106',
      '107',
      '108',
      '109'
      '110',
    ];
    showCupertinoModalPopup(
        context: context,
        builder: (_) {
          return CupertinoActionSheet(
            title: Text("Selecciona el curso"),
            //message: Text("Abrir curso para votar"),
            actions: [
              ...List.generate(primero.length, (index) {
                final String nombre = primero[index];
                return CupertinoActionSheetAction(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text(nombre),
                );
              }),
            ],
            cancelButton: CupertinoActionSheetAction(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("Cancelar"),
              isDestructiveAction: true,
            ),
          );
        });

  }

  void _CupertinoSegundo(BuildContext context) {
    final segundo = [
      '201',
      '202',
      '203',
      '304',
      '205',
      '206',
      '207',
      '208',
      '209',
    ];
    showCupertinoModalPopup(
        context: context,
        builder: (_) {
          return CupertinoActionSheet(
            title: Text("Selecciona el curso"),
            message: Text("Abrir curso para votar"),
            actions: [
              ...List.generate(segundo.length, (index) {
                final String nombre = segundo[index];
                return CupertinoActionSheetAction(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text(nombre),
                );
              }),
            ],
            cancelButton: CupertinoActionSheetAction(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("Cancelar"),
              isDestructiveAction: true,
            ),
          );
        });
  }

  void _CupertinoTercero(BuildContext context) {
    final tercero = [
      '301',
      '302',
      '303',
      '304',
      '305',
      '306',
    ];
    showCupertinoModalPopup(
        context: context,
        builder: (_) {
          return CupertinoActionSheet(
            title: Text("Selecciona el curso"),
            message: Text("Abrir curso para votar"),
            actions: [
              ...List.generate(tercero.length, (index) {
                final String nombre = tercero[index];
                return CupertinoActionSheetAction(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text(nombre),
                );
              }),
            ],
            cancelButton: CupertinoActionSheetAction(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("Cancelar"),
              isDestructiveAction: true,
            ),
          );
        });
  }

  void _CupertinoCuarto(BuildContext context) {
    final cuarto = [
      '401',
      '402',
      '403',
      '404',
      '405',
      '406',
    ];
    showCupertinoModalPopup(
        context: context,
        builder: (_) {
          return CupertinoActionSheet(
            title: Text("Selecciona el curso"),
            message: Text("Abrir curso para votar"),
            actions: [
              ...List.generate(cuarto.length, (index) {
                final String nombre = cuarto[index];
                return CupertinoActionSheetAction(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text(nombre),
                );
              }),
            ],
            cancelButton: CupertinoActionSheetAction(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("Cancelar"),
              isDestructiveAction: true,
            ),
          );
        });
  }

  void _CupertinoQuinto(BuildContext context) {
    final quinto = [
      '501',
      '502',
      '503',
      '504',
      '505',
      '506',
    ];
    showCupertinoModalPopup(
        context: context,
        builder: (_) {
          return CupertinoActionSheet(
            title: Text("Selecciona el curso"),
            message: Text("Abrir curso para votar"),
            actions: [
              ...List.generate(quinto.length, (index) {
                final String nombre = quinto[index];
                return CupertinoActionSheetAction(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text(nombre),
                );
              }),
            ],
            cancelButton: CupertinoActionSheetAction(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("Cancelar"),
              isDestructiveAction: true,
            ),
          );
        });
  }

  void _CupertinoSexto(BuildContext context) {
    final sexto = [
      '601',
      '602',
      '603',
      '604',
      '605',
      '606',
    ];
    showCupertinoModalPopup(
        context: context,
        builder: (_) {
          return CupertinoActionSheet(
            title: Text("Selecciona el curso"),
            message: Text("Abrir curso para votar"),
            actions: [
              ...List.generate(sexto.length, (index) {
                final String nombre = sexto[index];
                return CupertinoActionSheetAction(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text(nombre),
                );
              }),
            ],
            cancelButton: CupertinoActionSheetAction(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("Cancelar"),
              isDestructiveAction: true,
            ),
          );
        });
  }

  void _CupertinoSeptimo(BuildContext context) {
    final septimo = [
      '701',
      '702',
      '703',
      '704',
      '705',
      '706',
      '707',
    ];
    showCupertinoModalPopup(
        context: context,
        builder: (_) {
          return CupertinoActionSheet(
            title: Text("Selecciona el curso"),
            message: Text("Abrir curso para votar"),
            actions: [
              ...List.generate(septimo.length, (index) {
                final String nombre = septimo[index];
                return CupertinoActionSheetAction(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text(nombre),
                );
              }),
            ],
            cancelButton: CupertinoActionSheetAction(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("Cancelar"),
              isDestructiveAction: true,
            ),
          );
        });
  }

  void _CupertinoOctavo(BuildContext context) {
    final octavo = [
      '801',
      '802',
      '803',
      '804',
      '805',
      '806',
      '807',
    ];
    showCupertinoModalPopup(
        context: context,
        builder: (_) {
          return CupertinoActionSheet(
            title: Text("Selecciona el curso"),
            message: Text("Abrir curso para votar"),
            actions: [
              ...List.generate(octavo.length, (index) {
                final String nombre = octavo[index];
                return CupertinoActionSheetAction(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text(nombre),
                );
              }),
            ],
            cancelButton: CupertinoActionSheetAction(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("Cancelar"),
              isDestructiveAction: true,
            ),
          );
        });
  }

  void _CupertinoNoveno(BuildContext context) {
    final noveno = [
      '901',
      '902',
      '903',
      '904',
      '905',
      '906',
      '907',
    ];
    showCupertinoModalPopup(
        context: context,
        builder: (_) {
          return CupertinoActionSheet(
            title: Text("Selecciona el curso"),
            message: Text("Abrir curso para votar"),
            actions: [
              ...List.generate(noveno.length, (index) {
                final String nombre = noveno[index];
                return CupertinoActionSheetAction(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text(nombre),
                );
              }),
            ],
            cancelButton: CupertinoActionSheetAction(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("Cancelar"),
              isDestructiveAction: true,
            ),
          );
        });
  }

  void _CupertinoDecimo(BuildContext context) {
    final decimo = [
      '1001',
      '1002',
      '1003',
      '1004',
      '1005',
      '1006',
      '1007',
    ];
    showCupertinoModalPopup(
        context: context,
        builder: (_) {
          return CupertinoActionSheet(
            title: Text("Selecciona el curso"),
            message: Text("Abrir curso para votar"),
            actions: [
              ...List.generate(decimo.length, (index) {
                final String nombre = decimo[index];
                return CupertinoActionSheetAction(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text(nombre),
                );
              }),
            ],
            cancelButton: CupertinoActionSheetAction(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("Cancelar"),
              isDestructiveAction: true,
            ),
          );
        });
  }

  void _CupertinoOnce(BuildContext context) {
    final once = [
      '1101',
      '1102',
      '1103',
      '1104',
      '1105',
      '1106',
      '1107',
    ];
    showCupertinoModalPopup(
        context: context,
        builder: (_) {
          return CupertinoActionSheet(
            title: Text("Selecciona el curso"),
            message: Text("Abrir curso para votar"),
            actions: [
              ...List.generate(once.length, (index) {
                final String nombre = once[index];
                return CupertinoActionSheetAction(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text(nombre),
                );
              }),
            ],
            cancelButton: CupertinoActionSheetAction(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("Cancelar"),
              isDestructiveAction: true,
            ),
          );
        });
  }
}

