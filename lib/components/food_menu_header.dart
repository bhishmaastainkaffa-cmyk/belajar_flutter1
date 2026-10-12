import 'package:flutter/material.dart';

class FoodMenuHeader extends StatelessWidget {
  const FoodMenuHeader({super.key});

  static const Color background = Color(0xFFF5F5F5);
  static const Color gold = Color(0xFFC6A15B);
  static const Color cream = Color(0xFF292929);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(24, 28, 24, 30),
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0xFFFFFFFF),
            Color(0xFFE5E5E5),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(30),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'ROYAL FEAST',
                style: TextStyle(
                  color: gold,
                  letterSpacing: 3,
                  fontSize: 13,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Icon(
                Icons.workspace_premium_rounded,
                color: gold,
                size: 30,
              ),
            ],
          ),

          const SizedBox(height: 24),

          const Text(
            'A Taste of Luxury',
            style: TextStyle(
              color: cream,
              fontSize: 32,
              fontWeight: FontWeight.bold,
              height: 1.15,
            ),
          ),

          const SizedBox(height: 10),

          const Text(
            'Hidangan istimewa untuk momen\n'
            'yang tak terlupakan.',
            style: TextStyle(
              color: Color(0xFF666666),
              height: 1.6,
              fontSize: 14,
            ),
          ),

          const SizedBox(height: 22),

          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 14,
              vertical: 12,
            ),
            decoration: BoxDecoration(
              color: Colors.white.withValues(alpha: 0.65),
              borderRadius: BorderRadius.circular(14),
              border: Border.all(
                color: gold.withValues(alpha: 0.45),
              ),
            ),
            child: const Row(
              children: [
                Icon(
                  Icons.restaurant_menu_rounded,
                  color: gold,
                ),
                SizedBox(width: 10),
                Text(
                  'Exclusive Signature Dishes',
                  style: TextStyle(
                    color: cream,
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
