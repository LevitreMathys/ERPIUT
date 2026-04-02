import 'package:flutter/material.dart';

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
    return Article(
      urlImg: (json['image'] != null && json['image'] != '')
          ? json['image'] as String
          : null,
      name: json['name'],
      price: json['price'].toString(),
      description: json['description'],
    );
  }
}
