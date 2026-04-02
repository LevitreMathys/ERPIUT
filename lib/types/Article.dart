class Article {
  final String? urlImg;
  final String name;
  final String price;
  final String description;

  Article({
    this.urlImg,
    required this.name,
    required this.price,
    required this.description,
  });

  factory Article.fromJson(Map<String, dynamic> json) {
    print('json image = ${json['image']}'); // ← ajoute ça
    return Article(
      urlImg: json['image'] as String?,
      name: json['name'],
      price: json['price'].toString(),
      description: json['description'],
    );
  }
}
