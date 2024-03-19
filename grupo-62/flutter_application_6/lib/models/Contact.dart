class Contact {
  late String name;
  late String phone;

  Contact({required this.name, required this.phone});
  Contact.empty() {
    name = "";
    phone = "";
  }

  @override
  String toString() {
    return "$name -> $phone";
  }

  transformName() {
    return name.toUpperCase();
  }
}
