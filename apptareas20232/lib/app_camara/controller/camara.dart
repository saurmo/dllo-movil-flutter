import 'package:camera/camera.dart';
import 'package:permission_handler/permission_handler.dart';

// PERMISOS
// ANDROIND
// <uses-permission android:name="android.permission.CAMERA" />

// IOS ios/Runner/Info.plist
//<key>NSCameraUsageDescription</key>
//<string>Necesitamos acceso a la cámara para tomar fotos y grabar videos.</string>

// permission_handler
// flutter pub add permission_handler
// https://pub.dev/packages/permission_handler

// min sdk 21
Future initCamera() async {
  bool hasPermission = await checkCameraPermission();
  if (!hasPermission) {
    await requestCameraPermission();
  }

  final cameras = await availableCameras();
  final firstCamera = cameras.first;

  // Inicializa la cámara
  final cameraController =
      CameraController(firstCamera, ResolutionPreset.medium);

  // Abre la cámara
  await cameraController.initialize();

  // Ahora puedes usar 'cameraController' para acceder a la cámara
  return cameraController;
}

void disposeCamera(CameraController cameraController) {
  cameraController.dispose();
}

/// --------

Future<bool> checkCameraPermission() async {
  final bool result = await Permission.camera.isGranted;
  return result;
}

Future<void> requestCameraPermission() async {
  final PermissionStatus status = await Permission.camera.request();
  if (status.isGranted) {
    // El usuario otorgó permiso para la cámara.
    print("El usuario otorgó permiso para la cámara.");
  } else {
    print("El usuario denegó el permiso, o se encuentra en estado de espera.");
    // El usuario denegó el permiso, o se encuentra en estado de espera.
    // Puedes mostrar un mensaje al usuario para que configure manualmente los permisos.
  }
}
