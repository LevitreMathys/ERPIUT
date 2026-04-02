import 'package:flutter/material.dart';
import 'package:frontenderp/Components/ArticleCard.dart';

class ListArticleCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 12,
      children: [
        ArticleCard(name: "Test nom", price: "300", description: "salut mec"),
        ArticleCard(name: "Test nom", price: "300", description: "salut mec"),
        ArticleCard(name: "Test nom", price: "300", description: "salut mec"),
      ],
    );
  }
}
