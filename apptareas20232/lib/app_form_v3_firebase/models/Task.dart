import 'package:apptareas20232/app_form_v3_firebase/models/JsonAdapter.dart';

class Task implements IJsonAdapter {
  late String id;
  late String name;
  late String description;

  Task() {
    id = "";
    name = "";
    description = "";
  }

  Task.form(
      {required String this.id,
      required String this.name,
      required String this.description}) {}

  @override
  createJson() {
    return {"id": id, "name": name, "description": description};
  }
}
