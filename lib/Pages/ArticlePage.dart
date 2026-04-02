import 'package:flutter/material.dart';
import 'package:frontenderp/types/Article.dart';

class Articlepage extends StatelessWidget {
  final Article article;

  const Articlepage({super.key, required this.article});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Détails de l\'article')),
      body: Center(
        child: Column(
          children: [
            article.urlImg != null
                ? Image.network(
                    article.urlImg!,
                    width: 200,
                    height: 200,
                    fit: BoxFit.contain,
                  )
                : SizedBox(width: 200, height: 200),
            SizedBox(height: 20),
            Text(
              article.name,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Text(article.price + "\u20AC", style: TextStyle(fontSize: 20)),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(article.description, textAlign: TextAlign.center),
            ),
          ],
        ),
      ),
    );
  }
}
