import 'package:flutter/material.dart';
import 'package:frontenderp/Components/FournisseurCard.dart';
import 'package:frontenderp/services/UseApiFournisseur.dart';
import 'package:frontenderp/types/Fournisseur.dart';

class Headerfournisseur extends StatefulWidget {
  @override
  State<Headerfournisseur> createState() => _HeaderFournisseur();
}

class _HeaderFournisseur extends State<Headerfournisseur> {
  late Future<List<Fournisseur>> _fournisseurs;

  @override
  void initState() {
    super.initState();
    _fournisseurs = loadFournisseurs();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Fournisseur>>(
      future: _fournisseurs,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        }
        if (snapshot.hasError) {
          return Center(child: Text('Erreur : ${snapshot.error}'));
        }

        final fournisseurs = snapshot.data ?? [];

        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton.icon(
                onPressed: () => setState(() {
                  _fournisseurs = loadFournisseurs();
                }),
                icon: const Icon(Icons.refresh),
                label: const Text("Actualiser"),
              ),
            ),

            GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 10,
              ), 
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 10,
                crossAxisSpacing: 8,
                mainAxisSpacing: 4,
                childAspectRatio: 2.5,
              ),
              itemCount: fournisseurs.length,
              itemBuilder: (context, index) {
                return Fournisseurcard(fournisseur: fournisseurs[index]);
              },
            ),
          ],
        );
      },
    );
  }
}
