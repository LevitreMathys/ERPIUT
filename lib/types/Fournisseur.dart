class Fournisseur {
  final String number;
  final String student;
  final String name;

  Fournisseur({
    required this.number,
    required this.student,
    required this.name,
  });

  factory Fournisseur.fromJson(Map<String, dynamic> json) {
    return Fournisseur(
      number: json['id'].toString(),
      student: json['student'],
      name: json['name'],
    );
  }
}
