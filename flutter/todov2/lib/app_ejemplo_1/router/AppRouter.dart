import 'package:todov2/app_ejemplo_1/pages/detail_user.dart';
import 'package:todov2/inputs/main.dart';

class AppRouter {
  static routers() {
    return {
      'detail_user': (context) => DetailUser(),
      'inputs_screen': (context) => const InputsScreen(),
    };
  }
}
