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
          return const Center(child: CircularProgressIndicator());
        }
        if (snapshot.hasError) {
          return Center(child: Text('Erreur : ${snapshot.error}'));
        }

        final articles = snapshot.data ?? [];

        return Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: ElevatedButton.icon(
                onPressed: () => setState(() {
                  _articles = loadArticles();
                }),
                icon: const Icon(Icons.refresh),
                label: const Text("Actualiser"),
              ),
            ),

            Expanded(
              child: ListView.builder(
                padding: const EdgeInsets.all(8),
                itemCount: articles.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 12.0),
                    child: ArticleCard(article: articles[index]),
                  );
                },
              ),
            ),
          ],
        );
      },
    );
  }
}
