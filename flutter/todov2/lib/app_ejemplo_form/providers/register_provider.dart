import 'package:flutter/cupertino.dart';
import 'package:todov2/app_ejemplo_1/controller/User.dart';
import 'package:todov2/app_ejemplo_form/models/user_controller.dart';

class RegisterProvider extends ChangeNotifier {
  GlobalKey<FormState> formKey = GlobalKey();

  Map<String, dynamic> userInfo = {
    "name": "",
    "email": "",
    "phone": "",
    "password": "",
    "rol": "",
    "is_student": false,
    "semester": 0.0,
  };

  bool isValidForm() {
    FormState? state = formKey.currentState;
    if (state != null && state.validate()) {
      return true;
    } else {
      return false;
    }
  }

  void createUser() {
    UserController userController = UserController.formJson(userInfo);
    userController
        .createUser(userController.toJson())
        .then((value) => print(value))
        .catchError((onError) => print(onError));
  }
}
