import 'dart:io';

import 'package:path_provider/path_provider.dart';

/// Consulta la ruta de la carpeta donde se pueden leer y escribir archivos del app
Future<String> _localPath() async {
  final directory = await getApplicationDocumentsDirectory();
  return directory.path;
}

/// Consulta de un archivo
Future<File> localFile(String fileName) async {
  final path = await _localPath();
  return File('$path/$fileName');
}

/// Guardar en un archivo texto
Future<File> savePlainText(String fileName, String content) async {
  final file = await localFile(fileName);
  return file.writeAsString(content);
}

/// Guardar en un archivo bytes
Future<File> guardarArchivoBytes(
    String fileName, List<int> contenidoBytes) async {
  final file = await localFile(fileName);
  return file.writeAsBytes(contenidoBytes);
}

/// Leer un archivo de texto
Future<String> readPlainText(String fileName) async {
  final file = await localFile(fileName);
  return await file.readAsString();
}
