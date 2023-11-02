import 'package:apptareas20232/app_camara/controller/camara.dart';
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';

class AppCamera extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Center(
        child: FutureBuilder(
          future: initCamera(),
          builder: (context, snapshot) {
            switch (snapshot.connectionState) {
              case ConnectionState.waiting:
                return const CircularProgressIndicator.adaptive();
              case ConnectionState.done:
                {
                  CameraController controller = snapshot.data;
                  if (snapshot.hasData) {
                    return Column(
                      children: [
                        CameraPreview(snapshot.data),
                        ElevatedButton(
                          onPressed: () async {
                            try {
                              XFile file = await controller.takePicture();
                              print(file.path);
                              disposeCamera(controller);
                              // Share.shareFiles([file.path], text: 'Mira esta imagen que acabo de tomar');

                              // 'file' contiene la ubicación de la foto capturada
                            } catch (e) {
                              // Manejar errores
                            }
                          },
                          child: Text("Capturar Foto"),
                        )
                      ],
                    );
                  } else {
                    return Text(snapshot.error.toString());
                  }
                }
              default:
                return const Text("Ha ocurrido un error cargando");
            }
          },
        ),
      ),
    );
  }
}
