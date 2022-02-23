import 'dart:async';
import 'dart:io';

import 'package:path_provider/path_provider.dart';

//Variable de la ubicación
Future<String> get _localPath async{
  final Directory directorio = getApplicationDocumentsDirectory() as Directory;
  print("Directorio $directorio.path");
  return directorio.path;
}

//Referencia a la ubicación completa del archivo
//Variable del archivo
File nombrearchivo(String curso, String numtablet)  {
  final nombre = 'content://com.android.providers.media.documents/document/documents_root/' + curso + numtablet + '.csv';
  print("Nombre archivo $nombre");
  return File(nombre);
}

int existe(File nombre){
  if (nombre.exists() == true) {
    print("Leyendo el archivo $nombre");
    nombre.readAsString().then((String contents) {
      print(contents);
    });
  } else {
    try{
      nombre.create();
      print("El archivo fue creado $nombre.path");
    } catch (error) {
      print (error);
      return 0;
    }
  }
  return 1;
}

guardarvoto(File archivo, String person, String contra, String cabil){
  print("Guardarvoto");
  if (existe(archivo) == 1){
    var registro = person + "," + contra + "," + cabil;
    print(registro);
    archivo.writeAsString(registro, mode: FileMode.append);
    }
  }
