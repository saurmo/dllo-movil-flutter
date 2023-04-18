import 'package:todov2/app_ejemplo_1/pages/detail_user.dart';
import 'package:todov2/app_ejemplo_form/home_form.dart';

class AppRouter {
  static routers() {
    return {
      'detail_user': (context) => DetailUser(),
      'home_form': (context) => HomeForm(),
    };
  }
}
