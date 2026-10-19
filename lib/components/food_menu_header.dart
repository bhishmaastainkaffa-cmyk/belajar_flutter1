import 'package:flutter/material.dart';

class FoodMenuHeader extends StatelessWidget {
  const FoodMenuHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(16),
      child: Text(
        'Daftar Makanan',
        style: TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}