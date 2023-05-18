import 'package:flutter/cupertino.dart';
import 'package:tareas/config/local_data.dart';

class CourseProvider extends ChangeNotifier {
  GlobalKey<FormState> formKey = GlobalKey();

  Map<String, dynamic> courseInfo = {"name": "", "description": ""};

  bool isValidForm() {
    FormState? state = formKey.currentState;
    if (state != null && state.validate()) {
      return true;
    } else {
      return false;
    }
  }

  void loadCourses() async {
    dynamic response = await readPlainText('courses.json');
    print(response);
  }

  Future<void> createCourse() async {
    dynamic response =
        await savePlainText('courses.json', courseInfo.toString());
    print(response);
  }
}
