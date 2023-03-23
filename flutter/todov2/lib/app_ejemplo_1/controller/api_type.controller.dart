import 'dart:io';
import 'package:http/http.dart' as http;

import 'package:todov2/app_ejemplo_1/controller/models/ApiType.dart';

class ApiTypeController {
  List<ApiType> apis = [
    ApiType.fromJson({
      "API": "AdoptAPet",
      "Description": "Resource to help get pets adopted",
      "Auth": "apiKey",
      "HTTPS": true,
      "Cors": "yes",
      "Link": "https://www.adoptapet.com/public/apis/pet_list.html",
      "Category": "Animals"
    }),
    ApiType.fromJson(
      {
        "API": "Axolotl",
        "Description": "Collection of axolotl pictures and facts",
        "Auth": "",
        "HTTPS": true,
        "Cors": "no",
        "Link": "https://theaxolotlapi.netlify.app/",
        "Category": "Animals"
      },
    )
  ];

  List<ApiType> getApis()  {
    print("Call Api");
    var url = Uri.https('api.publicapis.org', 'entries');
    // var response = await http.get(url);
    print(apis);
    return apis;
  }
}
