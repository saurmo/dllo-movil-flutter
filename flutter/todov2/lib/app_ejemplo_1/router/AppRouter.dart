import 'package:todov2/app_ejemplo_1/pages/detail_user.dart';
import 'package:todov2/app_ejemplo_form/home_form.dart';
import 'package:todov2/app_infinity_scroll/home_infinity_scroll.dart';

class AppRouter {
  static routers() {
    return {
      'detail_user': (context) => DetailUser(),
      'home_form': (context) => HomeForm(),
      'home_infinity_scroll': (context) => HomeInfinityScroll(),
    };
  }
}
