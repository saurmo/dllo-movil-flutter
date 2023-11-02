import 'dart:io';
import 'dart:async';
import 'package:path_provider/path_provider.dart';

// https://pub.dev/packages/path_provider
// flutter pub add path_provider
Future<void> guardarEnArchivo(String datos) async {
  try {
    final directorio = await getApplicationDocumentsDirectory();
    final archivo = File('${directorio.path}/miarchivo.txt');

    await archivo.writeAsString(datos);
  } catch (e) {
    print("Save File");
    print(e);
  }
}

Future<String> leerDesdeArchivo() async {
  try {
    final directorio = await getApplicationDocumentsDirectory();
    final archivo = File('${directorio.path}/miarchivo.txt');

    String contenido = await archivo.readAsString();
    return contenido;
  } catch (e) {
    return "No se pudo leer el archivo: $e";
  }
}
