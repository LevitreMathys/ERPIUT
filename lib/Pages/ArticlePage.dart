import 'package:flutter/material.dart';
import 'package:frontenderp/Components/ImageNotSupported.dart';
import 'package:frontenderp/types/Article.dart';

class Articlepage extends StatelessWidget {
  final Article article;

  const Articlepage({super.key, required this.article});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(article.name)),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 20),

              article.urlImg != null && article.urlImg!.isNotEmpty
                  ? Image.network(
                      article.urlImg!,
                      width: 200,
                      height: 200,
                      fit: BoxFit.contain,
                      errorBuilder: (context, error, stackTrace) =>
                          Imagenotsupported(size: 200.0),
                    )
                  : Imagenotsupported(size: 200.0),

              const SizedBox(height: 20),
              Text(
                article.name,
                style: const TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "${article.price} €",
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.green[700],
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: Text(
                  article.description,
                  textAlign: TextAlign
                      .justify, // Texte justifié pour les descriptions longues
                  style: const TextStyle(fontSize: 16),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
