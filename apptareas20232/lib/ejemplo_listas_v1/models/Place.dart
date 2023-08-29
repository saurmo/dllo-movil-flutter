class Place {
  String url;
  String title;
  String subtitle;
  String description;
  int? stars;

  Place({
    required this.url,
    required this.description,
    required this.title,
    required this.subtitle,
    int? this.stars,
  });

  static getPlaces() {
    return [
      Place(
          url:
              "https://cdn.pixabay.com/photo/2023/08/08/17/20/yosemite-8177850_1280.jpg",
          description:
              "Lorem, ipsum dolor sit amet consectetur adipisicing elit. Soluta amet delectus, saepe, velit, fugiat mollitia aut maxime dolorem eaque explicabo quisquam ipsa obcaecati fugit? Laudantium pariatur laboriosam officia assumenda ipsum.",
          title: "Cascada Salto del Buey",
          subtitle: "La ceja, Antioquia"),
      Place(
          url:
              "https://cdn.pixabay.com/photo/2023/08/08/17/20/yosemite-8177850_1280.jpg",
          description:
              "Lorem, ipsum dolor sit amet consectetur adipisicing elit. Soluta amet delectus, saepe, velit, fugiat mollitia aut maxime dolorem eaque explicabo quisquam ipsa obcaecati fugit? Laudantium pariatur laboriosam officia assumenda ipsum.",
          title: "Cascada Tequendama",
          subtitle: "Cundinamarca"),
      Place(
          url:
              "https://cdn.pixabay.com/photo/2023/08/08/17/20/yosemite-8177850_1280.jpg",
          description:
              "Lorem, ipsum dolor sit amet consectetur adipisicing elit. Soluta amet delectus, saepe, velit, fugiat mollitia aut maxime dolorem eaque explicabo quisquam ipsa obcaecati fugit? Laudantium pariatur laboriosam officia assumenda ipsum.",
          title: "Salto del Angel",
          subtitle: "Envigado"),
      Place(
          url:
              "https://cdn.pixabay.com/photo/2023/08/08/17/20/yosemite-8177850_1280.jpg",
          description:
              "Lorem, ipsum dolor sit amet consectetur adipisicing elit. Soluta amet delectus, saepe, velit, fugiat mollitia aut maxime dolorem eaque explicabo quisquam ipsa obcaecati fugit? Laudantium pariatur laboriosam officia assumenda ipsum.",
          title: "Charco La Cristalina",
          subtitle: "San Rafael, Antioquia"),
      Place(
          url:
              "https://cdn.pixabay.com/photo/2023/08/08/17/20/yosemite-8177850_1280.jpg",
          description:
              "Lorem, ipsum dolor sit amet consectetur adipisicing elit. Soluta amet delectus, saepe, velit, fugiat mollitia aut maxime dolorem eaque explicabo quisquam ipsa obcaecati fugit? Laudantium pariatur laboriosam officia assumenda ipsum.",
          title: "Villa del Aburra",
          subtitle: "Medellin, Antioquia"),
      Place(
          url:
              "https://cdn.pixabay.com/photo/2023/08/08/17/20/yosemite-8177850_1280.jpg",
          description:
              "Lorem, ipsum dolor sit amet consectetur adipisicing elit. Soluta amet delectus, saepe, velit, fugiat mollitia aut maxime dolorem eaque explicabo quisquam ipsa obcaecati fugit? Laudantium pariatur laboriosam officia assumenda ipsum.",
          title: "La curva",
          subtitle: "Medellin, Antioqua"),
      Place(
          url:
              "https://cdn.pixabay.com/photo/2023/08/08/17/20/yosemite-8177850_1280.jpg",
          description:
              "Lorem, ipsum dolor sit amet consectetur adipisicing elit. Soluta amet delectus, saepe, velit, fugiat mollitia aut maxime dolorem eaque explicabo quisquam ipsa obcaecati fugit? Laudantium pariatur laboriosam officia assumenda ipsum.",
          title: "Villa del Aburra",
          subtitle: "Medellin, Antioquia"),
      Place(
          url:
              "https://cdn.pixabay.com/photo/2023/08/08/17/20/yosemite-8177850_1280.jpg",
          description:
              "Lorem, ipsum dolor sit amet consectetur adipisicing elit. Soluta amet delectus, saepe, velit, fugiat mollitia aut maxime dolorem eaque explicabo quisquam ipsa obcaecati fugit? Laudantium pariatur laboriosam officia assumenda ipsum.",
          title: "La curva",
          subtitle: "Medellin, Antioqua")
    ];
  }
}
