import 'package:flutter/material.dart';
import 'package:frontenderp/Components/ListArticleCard.dart';

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: /*Text("Les articles vont s'afficher ici")*/ Column(
        children: [ListArticleCard()],
      ),
    );
  }
}
