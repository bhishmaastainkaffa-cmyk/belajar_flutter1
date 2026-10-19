
import 'package:flutter/material.dart';
import 'package:belajar_flutter1/models/makanan_model.dart';

class FoodMenuCard extends StatelessWidget {
  final MakananModel makanan;

  const FoodMenuCard({
    super.key,
    required this.makanan,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      child: ListTile(
        contentPadding: const EdgeInsets.all(10),
        leading: Image.network(
          makanan.gambar,
          width: 80,
          height: 80,
          fit: BoxFit.cover,
          errorBuilder: (context, error, stackTrace) {
            return const SizedBox(
              width: 80,
              height: 80,
              child: Icon(Icons.restaurant),
            );
          },
        ),
        title: Text(makanan.namaMakanan),
        subtitle: Text('Rp ${makanan.harga}'),
        trailing: const Icon(Icons.arrow_forward_ios, size: 16),
      ),
    );
  }
}
