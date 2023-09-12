import 'package:http/http.dart' as http;

class HttpService {
  HttpService? instance;

  // static getInstance() {
  //   if (instance != null) {
  //     return instance;
  //   } else
  //     return HttpService();
  // }


  Future<http.Response> get(Uri url, {Map<String, String>? headers}) async {
    return http.get(url);
  }
}
