
import 'package:flutter/material.dart';
import 'package:belajar_flutter1/models/makanan_model.dart';

class FoodDetailSection extends StatelessWidget {
  final MakananModel makanan;

  const FoodDetailSection({
    super.key,
    required this.makanan,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
    child: Padding(
      padding: const EdgeInsets.all(12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Deskripsi',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            makanan.deskripsi,
            style: const TextStyle(
              fontSize: 14,
              height: 1.5,
            ),
          ),
        ],
      ),
    ),
  );
 }
}