import 'dart:async';

lookUpVersion() {
  return Future.delayed(Duration(seconds: 3), () {
    // return "TEST";
    throw "Error Simulado";
  });
}
//

Future<String> checkVersion() async {
  // try {
  print(" 11. Inicio check Version");
  String version = await lookUpVersion();
  print(" 22. fin check Version");
  return version;
  // } catch (e) {
  //   return "Ha ocurrido un error";
  // }
}

void main()  {
  print(" 1. Inicio principal");
  // Resolviendo el future con then - catch
  checkVersion()
      .then((value) => print(value))
      .catchError((onError) => print("Error principal $onError"));
  // String version = await checkVersion();
  // print(version);

  print(" 2. Fin principal");
}
