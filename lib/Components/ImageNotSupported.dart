import 'package:flutter/material.dart';

class Imagenotsupported extends StatelessWidget {

  final double size;

  const Imagenotsupported({super.key, this.size = 80});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: BorderRadius.circular(12),
      ),
      child: Icon(Icons.image_not_supported, color: Colors.grey[600], size: size * 0.6),
    );
  }
}
