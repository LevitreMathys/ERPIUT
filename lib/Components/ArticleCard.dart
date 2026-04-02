import 'package:flutter/material.dart';

class ArticleCard extends StatelessWidget {
  final String? urlImg;
  final String name;
  final String price;
  final String description;

  const ArticleCard({
    this.urlImg,
    required this.name,
    required this.price,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    print('urlImg: $urlImg'); // Debug: affiche la valeur de urlImg
    return Container(
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
          urlImg != null
              ? Image.network(
                  urlImg!,
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
                Text(name, style: TextStyle(fontWeight: FontWeight.w900)),
                Text(
                  price + "\u20AC",
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
                Text(
                  description,
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
