import 'package:flutter/material.dart';
import 'package:belajar_flutter1/models/makanan_model.dart';

class FoodDetailSection extends StatelessWidget {
  final MakananModel makanan;

  const FoodDetailSection({
    super.key,
    required this.makanan,
  });

  static const Color surface = Color(0xFFFFFFFF);
  static const Color gold = Color(0xFFC6A15B);
  static const Color cream = Color(0xFF292929);
  static const Color subtitle = Color(0xFF666666);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Panel deskripsi
        Container(
          width: double.infinity,
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: surface,
            borderRadius: BorderRadius.circular(22),
            border: Border.all(
              color: const Color(0xFFE5E0D6),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withValues(alpha: 0.04),
                blurRadius: 12,
                offset: const Offset(0, 4),
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Row(
                children: [
                  Icon(
                    Icons.restaurant_menu_rounded,
                    color: gold,
                    size: 24,
                  ),
                  SizedBox(width: 10),
                  Text(
                    'About This Dish',
                    style: TextStyle(
                      color: cream,
                      fontSize: 19,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Text(
                makanan.deskripsi,
                style: const TextStyle(
                  color: subtitle,
                  fontSize: 14,
                  height: 1.8,
                ),
              ),
            ],
          ),
        ),

        const SizedBox(height: 18),

        // Chef's Recommendation
        Container(
          width: double.infinity,
          padding: const EdgeInsets.all(18),
          decoration: BoxDecoration(
            color: surface,
            borderRadius: BorderRadius.circular(20),
            border: Border.all(
              color: const Color(0xFFE5E0D6),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withValues(alpha: 0.04),
                blurRadius: 12,
                offset: const Offset(0, 4),
              ),
            ],
          ),
          child: const Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(
                Icons.workspace_premium_rounded,
                color: gold,
                size: 28,
              ),
              SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Chef’s Recommendation',
                      style: TextStyle(
                        color: gold,
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                    SizedBox(height: 7),
                    Text(
                      'Pilihan hidangan premium dengan '
                      'perhatian pada rasa dan penyajian.',
                      style: TextStyle(
                        color: subtitle,
                        fontSize: 13,
                        height: 1.6,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}