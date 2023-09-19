import 'package:apptareas20232/ejemplo_lista_v2/controllers/Frases.controller.dart';
import 'package:flutter/material.dart';

class HomeFrases extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomeFrases();
  }
}

class _HomeFrases extends State<HomeFrases> {
  FrasesController _frasesController = FrasesController();
  Future refresh() async {
    setState(() {});
    print("Hola");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Frases Chuck Norris Api")),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: RefreshIndicator.adaptive(
          onRefresh: refresh,
          child: FutureBuilder(
            future: _frasesController.getFrases(),
            builder: (context, snapshot) {
              switch (snapshot.connectionState) {
                case ConnectionState.waiting:
                  return const CircularProgressIndicator.adaptive();
                case ConnectionState.done:
                  {
                    if (snapshot.hasData) {
                      String frase = snapshot.data!.value.toString();
                      return Text(frase);
                    } else {
                      return Text(snapshot.error.toString());
                    }
                  }

                default:
                  return const Text("Ha ocurrido un error");
              }
            },
          ),
        ),
      ),
    );
  }
}
