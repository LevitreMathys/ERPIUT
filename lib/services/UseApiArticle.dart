import 'dart:convert';
import 'package:frontenderp/types/Article.dart';
import 'package:http/http.dart' as http;

Future<List<Article>> loadArticles() async {
  final response = await http.get(
    Uri.parse('http://polyedre.eu:8000/polyfx/cgi/getart.cgi?frs=401000430'),
  );

  if (response.statusCode == 200) {
    final List<dynamic> data = jsonDecode(response.body);
    return data.map((json) => Article.fromJson(json)).toList();
  } else {
    throw Exception(
      'Failed to load articles. Code error : ${response.statusCode}',
    );
  }
}
