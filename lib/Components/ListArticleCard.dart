import 'package:flutter/material.dart';
import 'package:frontenderp/Components/ArticleCard.dart';
import 'package:frontenderp/services/UseApiArticle.dart';
import 'package:frontenderp/types/Article.dart';

class ListArticleCard extends StatefulWidget {
  @override
  State<ListArticleCard> createState() => _ListArticleCardState();
}

class _ListArticleCardState extends State<ListArticleCard> {
  late Future<List<Article>> _articles;

  @override
  void initState() {
    super.initState();
    _articles = loadArticles();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Article>>(
      future: _articles,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return CircularProgressIndicator(); // chargement
        }
        if (snapshot.hasError) {
          return Text('Erreur : ${snapshot.error}');
        }

        final articles = snapshot.data!;
        return Column(
          spacing: 12,
          children: articles
              .map(
                (a) => ArticleCard(
                  urlImg: a.urlImg,
                  name: a.name,
                  price: a.price,
                  description: a.description,
                ),
              )
              .toList(),
        );
      },
    );
  }
}
