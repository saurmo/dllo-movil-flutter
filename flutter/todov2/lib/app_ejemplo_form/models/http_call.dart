import 'dart:convert';

import 'package:http/http.dart' as http;

class HttpCall {
  String host = "udem-projects-default-rtdb.firebaseio.com";

  Future<http.Response> create(String path, Map<String, dynamic> json) async {
    Uri url = Uri.https(host, path);
    var result = await http.post(url, body: jsonEncode(json));
    return result;
  }
}
