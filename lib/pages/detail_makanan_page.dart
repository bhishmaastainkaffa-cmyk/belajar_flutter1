
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:belajar_flutter1/controllers/detail_makanan_controller.dart';
import 'package:belajar_flutter1/components/food_detail_section.dart';

class DetailMakananPage extends StatelessWidget {
  DetailMakananPage({super.key});

  final DetailMakananController controller =
      Get.put(DetailMakananController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail Makanan'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(
            controller.makanan.gambar,
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
            controller.makanan.namaMakanan,
            style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8),
          Card(
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Text('Harga: Rp ${controller.makanan.harga}'),
            ),
          ),
          const SizedBox(height: 24),
          FoodDetailSection(makanan: controller.makanan),
        ],
      ),
    );
  }
}
