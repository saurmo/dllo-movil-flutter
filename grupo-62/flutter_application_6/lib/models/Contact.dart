class Contact {
  String name;
  String phone;

  Contact({required this.name, required this.phone});

  @override
  String toString() {
    return "$name -> $phone";
  }

  transformName() {
    return name.toUpperCase();
  }
}
