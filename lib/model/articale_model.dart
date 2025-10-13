class ArticaleModel {
  final String image;
  final String title;
  final String subtitle;
  static String altrimage =
      "https://store-images.s-microsoft.com/image/apps.30645.9007199266245907.cb06f1f9-9154-408e-b4ef-d19f2325893b.ac3b465e-4384-42a8-9142-901c0405e1bc";
  static String altrtext = "no text";
  ArticaleModel(
      {required this.image, required this.title, required this.subtitle});
  factory ArticaleModel.fromjson(json) {
    return ArticaleModel(
        image: json['urlToImage'] ?? altrimage,
        title: json['title'] ?? altrtext,
        subtitle: json['description'] ?? altrtext);
  }
}
