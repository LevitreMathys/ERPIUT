import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:frontenderp/types/Article.dart';

Future<List<Article>> loadArticles() async {
  final String response = await rootBundle.loadString('assets/data/data.json');
  final List<dynamic> data = jsonDecode(response);
  return data.map((json) => Article.fromJson(json)).toList();
}
