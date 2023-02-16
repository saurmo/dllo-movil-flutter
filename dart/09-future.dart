 import 'package:http/http.dart' as http;

void main(List<String> args) {
  String url = "api/v2/pokemon/ditto";
  String host = "pokeapi.co";
  httpGet(host, url).then((value) => null);
}

Future httpGet(String host, String path) async {
  var url = Uri.http(host, path);

  var response = await http.get(url);
  print('Response status: ${response.statusCode}');
  print('Response body: ${response.body}');

  return response;
}
