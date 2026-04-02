import 'package:flutter/material.dart';
import 'package:frontenderp/Pages/ArticlePage.dart';
import 'package:frontenderp/types/Article.dart';

class ArticleCard extends StatelessWidget {
  final Article article;

  const ArticleCard({required this.article});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Articlepage(article: article),
          ),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0xFFF5F5F5),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              blurRadius: 1,
              spreadRadius: 2,
              offset: Offset(0, 1),
            ),
          ],
          borderRadius: BorderRadius.circular(20),
        ),
        padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
        child: Row(
          children: [
            article.urlImg != null
                ? Image.network(
                    article.urlImg!,
                    width: 80,
                    height: 80,
                    fit: BoxFit.contain,
                  )
                : SizedBox(width: 80),
            SizedBox(width: 12), // espace entre image et texte
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    article.name,
                    style: TextStyle(fontWeight: FontWeight.w900),
                  ),
                  Text(
                    article.price + "\u20AC",
                    style: TextStyle(fontWeight: FontWeight.w500),
                  ),
                  Text(
                    article.description,
                    style: TextStyle(fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
