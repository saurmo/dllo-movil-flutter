import 'package:camera/camera.dart';
import 'package:permission_handler/permission_handler.dart';

Future initCamera() async {
  // Permission
  bool hasPermission = await checkPermissionCamera();
  if (!hasPermission) {
    bool isGranted = await requestPermissionCamera();
    if (!isGranted) {
      return null;
    }
  }
  // Init controller
  final cameras = await availableCameras();
  final camera = cameras.first;
  final controller = CameraController(camera, ResolutionPreset.medium);

  await controller.initialize();

  return controller;
}

Future<bool> checkPermissionCamera() async {
  var status = await Permission.camera.status;
  return status.isGranted;
}

Future<bool> requestPermissionCamera() async {
  PermissionStatus status = await Permission.camera.request();
  if (status.isGranted) {
    // El usuario le dio permisos
    return true;
  } else {
    // El usuario NO dio permisos
    return false;
  }
}
