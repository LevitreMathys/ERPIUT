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
    return Container(
      decoration: BoxDecoration(
        color: Color(0xFFF5F5F5),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2), // couleur de l'ombre
            blurRadius: 1, // flou
            spreadRadius: 2, // expansion
            offset: Offset(0, 1), // décalage (x, y)
          ),
        ],
        borderRadius: BorderRadius.circular(20),
      ),
      padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(this.name, style: TextStyle(fontWeight: FontWeight.w900)),
              Text(this.price, style: TextStyle(fontWeight: FontWeight.w500)),
              Text(
                this.description,
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
