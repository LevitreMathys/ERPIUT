import 'dart:convert';
import 'package:frontenderp/types/Fournisseur.dart';
import 'package:http/http.dart' as http;

Future<List<Fournisseur>> loadFournisseurs() async {
  final response = await http.get(
    Uri.parse('http://polyedre.eu:8000/polyfx/cgi/getfrstd1.cgi'),
  );

  if (response.statusCode == 200) {
    final List<dynamic> data = jsonDecode(response.body);
    return data.map((json) => Fournisseur.fromJson(json)).toList();
  } else {
    throw Exception(
      'Failed to load fournisseurs. Code error : ${response.statusCode}',
    );
  }
}
