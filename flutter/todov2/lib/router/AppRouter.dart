import 'package:todov2/app_ejemplo_1/pages/detail_user.dart';
import 'package:todov2/app_ejemplo_form/home_form.dart';
import 'package:todov2/app_external_auth/home_external_auth.dart';
import 'package:todov2/app_infinity_scroll/home_infinity_scroll.dart';
import 'package:todov2/app_infinity_scroll_clase/home_infinity_scroll_class.dart';

class AppRouter {
  static routers() {
    return {
      'detail_user': (context) => DetailUser(),
      'home_form': (context) => HomeForm(),
      'home_infinity_scroll': (context) => HomeInfinityScroll(),
      'home_infinity_scroll_class': (context) => HomeInfinityScrollClass(),
      'home_external_auth': (context) => const HomeExternalAuth(),
    };
  }
}
