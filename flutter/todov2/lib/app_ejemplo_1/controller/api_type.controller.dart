import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;

import 'package:todov2/app_ejemplo_1/controller/models/ApiType.dart';

class ApiTypeController {
  List<ApiType> apis = [];

  showDetail(ApiType api) {
    print(api.link);
  }

  Future<List<ApiType>> getApis() async {
    print("Call Api");
    var url = Uri.https('api.publicapis.org', 'entries');
    var response = await http.get(url);
    String data = response.body;
    Map<String, dynamic> jsonApis = jsonDecode(data);
    List entries = jsonApis["entries"];
    entries.forEach((element) {
      apis.add(ApiType.fromJson(element));
    });
    return apis;
  }
}
