class Frase {
  late List categories;
  late String createdAt;
  late String iconUrl;
  late String id;
  late String updatedAt;
  late String url;
  late String value;

  Frase.fromJson(Map<String, dynamic> json) {
    categories = json["categories"];
    createdAt = json["created_at"];
    iconUrl = json["icon_url"];
    id = json["id"];
    updatedAt = json["updated_at"];
    url = json["url"];
    value = json["value"];
  }
}
