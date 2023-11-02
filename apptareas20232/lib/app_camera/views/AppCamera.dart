import 'package:apptareas20232/app_camera/controller/AppCameraController.dart';
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';

class AppCamera extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: initCamera(),
        builder: (context, snapshot) {
          switch (snapshot.connectionState) {
            case ConnectionState.waiting:
              return const CircularProgressIndicator.adaptive();
            case ConnectionState.done:
              {
                if (snapshot.hasData) {
                  CameraController controller = snapshot.data;
                  return Column(
                    children: [
                      CameraPreview(controller),
                      ElevatedButton(
                          onPressed: () async {
                            try {
                              XFile file = await controller.takePicture();
                              print(file.path);
                              controller.dispose();
                              // Share.shareFiles([file.path], text: 'Mira esta imagen que acabo de tomar');

                              // 'file' contiene la ubicación de la foto capturada
                            } catch (e) {
                              // Manejar errores
                            }
                          },
                          child: const Text("Tomar Foto"))
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
    );
  }
}
