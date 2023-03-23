class ApiType {
  String api = "";
  String description = "";
  String auth = "";
  bool withHttps = false;
  bool cors = false;
  String link = "";
  String category = "";

  ApiType({api, description, auth, withHttps, cors, link, category});

  ApiType.fromJson(Map<String, dynamic> jsonApiType) {
    api = jsonApiType["API"];
    description = jsonApiType["Description"];
    auth = jsonApiType["Auth"];
    withHttps = jsonApiType["HTTPS"];
    cors = jsonApiType["Cors"]=="yes"?true:false;
    link = jsonApiType["Link"];
    category = jsonApiType["Category"];
  }
}
