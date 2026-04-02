import 'package:flutter/material.dart';
import 'package:frontenderp/types/Fournisseur.dart';

class Fournisseurcard extends StatelessWidget {
  final Fournisseur fournisseur;
  const Fournisseurcard({super.key, required this.fournisseur});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => print('fournisseur: ${fournisseur.name}'),
      child: Container(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              fournisseur.name,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(fournisseur.student),
          ],
        ),
        decoration: BoxDecoration(),
      ),
    );
  }
}
