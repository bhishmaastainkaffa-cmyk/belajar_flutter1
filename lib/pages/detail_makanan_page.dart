
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:belajar_flutter1/models/makanan_model.dart';
import 'package:belajar_flutter1/components/food_detail_section.dart';

class DetailMakananPage extends StatelessWidget {
  DetailMakananPage({super.key});

  @override
  Widget build(BuildContext context) {
    final MakananModel makanan = Get.arguments as MakananModel;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail Makanan'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
              makanan.gambar,
              width: double.infinity,
              height: 220,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) {
                return const SizedBox(
                  height: 220,
                  child: Center(
                    child: Icon(Icons.restaurant, size: 50),
                  ),
                );
              },
            ),
            const SizedBox(height: 16),
            Text(
              makanan.namaMakanan,
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              'Rp ${makanan.harga}',
              style: const TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 24),
            FoodDetailSection(makanan: makanan),
          ],
        ),
      ),
    );
  }
}
