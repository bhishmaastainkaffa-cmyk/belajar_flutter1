
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:belajar_flutter1/models/makanan_model.dart';
import 'package:belajar_flutter1/components/food_detail_section.dart';

class DetailMakananPage extends StatelessWidget {
  DetailMakananPage({super.key});

  static const Color background = Color(0xFFF5F5F5);
  static const Color surface = Color(0xFFFFFFFF);
  static const Color gold = Color(0xFFC6A15B);
  static const Color cream = Color(0xFF292929);

  @override
  Widget build(BuildContext context) {
    final MakananModel makanan = Get.arguments as MakananModel;

    return Scaffold(
      backgroundColor: background,

      appBar: AppBar(
        backgroundColor: background,
        elevation: 0,
        iconTheme: const IconThemeData(color: gold),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_rounded),
          onPressed: () => Get.back(),
        ),
        title: const Text(
          'ROYAL FEAST',
          style: TextStyle(
            color: gold,
            fontSize: 15,
            fontWeight: FontWeight.bold,
            letterSpacing: 2,
          ),
        ),
      ),

      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Gambar utama
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(24),
                child: Stack(
                  children: [
                    Image.network(
                      makanan.gambar,
                      width: double.infinity,
                      height: 280,
                      fit: BoxFit.cover,
                      errorBuilder: (context, error, stackTrace) {
                        return Container(
                          height: 280,
                          width: double.infinity,
                          color: surface,
                          child: const Icon(
                            Icons.restaurant,
                            size: 70,
                            color: gold,
                          ),
                        );
                      },
                    ),

                    Positioned(
                      left: 14,
                      top: 14,
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 12,
                          vertical: 8,
                        ),
                        decoration: BoxDecoration(
                          color: background.withValues(alpha: 0.85),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: const Row(
                          children: [
                            Icon(
                              Icons.workspace_premium_rounded,
                              color: gold,
                              size: 16,
                            ),
                            SizedBox(width: 6),
                            Text(
                              "CHEF'S SPECIAL",
                              style: TextStyle(
                                color: cream,
                                fontSize: 10,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 1,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.fromLTRB(22, 24, 22, 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Nama makanan
                  Text(
                    makanan.namaMakanan,
                    style: const TextStyle(
                      color: cream,
                      fontSize: 29,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 14),

                  // Harga
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 12,
                    ),
                    decoration: BoxDecoration(
                      color: surface,
                      borderRadius: BorderRadius.circular(14),
                      border: Border.all(
                        color: gold.withValues(alpha: 0.35),
                      ),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Icon(
                          Icons.sell_rounded,
                          color: gold,
                          size: 20,
                        ),
                        const SizedBox(width: 10),
                        Text(
                          'Rp ${makanan.harga}',
                          style: const TextStyle(
                            color: gold,
                            fontSize: 21,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 26),

                  // Deskripsi dan informasi tambahan
                  FoodDetailSection(
                    makanan: makanan,
                  ),

                  const SizedBox(height: 26),

                  // Tombol kembali
                  SizedBox(
                    width: double.infinity,
                    height: 54,
                    child: ElevatedButton.icon(
                      onPressed: () => Get.back(),
                      icon: const Icon(
                        Icons.arrow_back_rounded,
                      ),
                      label: const Text(
                        'Kembali ke Daftar Menu',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: gold,
                        foregroundColor: background,
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(height: 16),

                  const Center(
                    child: Text(
                      'ROYAL FEAST • FINE DINING EXPERIENCE',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white38,
                        fontSize: 10,
                        letterSpacing: 1.2,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
