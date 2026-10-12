import 'package:flutter/material.dart';
import 'package:belajar_flutter1/models/makanan_model.dart';

class FoodMenuCard extends StatelessWidget {
  final MakananModel makanan;
  final VoidCallback onTap;

  const FoodMenuCard({
    super.key,
    required this.makanan,
    required this.onTap,
  });

  static const Color surface = Color(0xFFFFFFFF);
  static const Color gold = Color(0xFFC6A15B);
  static const Color cream = Color(0xFF292929);
  static const Color subtitle = Color(0xFF777777);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      decoration: BoxDecoration(
        color: surface,
        borderRadius: BorderRadius.circular(22),
        border: Border.all(
          color: const Color(0xFFE5E0D6),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.05),
            blurRadius: 14,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: InkWell(
        borderRadius: BorderRadius.circular(22),
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Image.network(
                  makanan.gambar,
                  width: 112,
                  height: 120,
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) {
                    return Container(
                      width: 112,
                      height: 120,
                      color: const Color(0xFFF0F0F0),
                      child: const Icon(
                        Icons.restaurant,
                        color: gold,
                        size: 36,
                      ),
                    );
                  },
                ),
              ),

              const SizedBox(width: 14),

              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "CHEF'S SPECIAL",
                      style: TextStyle(
                        color: gold,
                        fontSize: 9,
                        letterSpacing: 1.4,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    const SizedBox(height: 8),

                    Text(
                      makanan.namaMakanan,
                      style: const TextStyle(
                        color: cream,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    const SizedBox(height: 8),

                    Text(
                      'Rp ${makanan.harga}',
                      style: const TextStyle(
                        color: gold,
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    const SizedBox(height: 10),

                    const Row(
                      children: [
                        Text(
                          'Explore dish',
                          style: TextStyle(
                            color: subtitle,
                            fontSize: 11,
                          ),
                        ),
                        SizedBox(width: 5),
                        Icon(
                          Icons.arrow_forward_rounded,
                          size: 15,
                          color: gold,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}