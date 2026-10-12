
import 'package:belajar_flutter1/controllers/list_makanan_controller.dart';
import 'package:belajar_flutter1/pages/detail_makanan_page.dart';
import 'package:belajar_flutter1/components/food_menu_header.dart';
import 'package:belajar_flutter1/components/food_menu_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ListMakananPage extends StatelessWidget {
  ListMakananPage({super.key});

  final controller = Get.put(ListMakananController());

  static const Color background = Color(0xFFF5F5F5);
  static const Color surface = Color(0xFFFFFFFF);
  static const Color gold = Color(0xFFC6A15B);
  static const Color cream = Color(0xFF292929);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
       body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFFFFFFFF),
              Color(0xFFE5E5E5),
            ],
          ),
        ),
        child: SafeArea(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              const FoodMenuHeader(),

            Padding(
              padding: const EdgeInsets.fromLTRB(20, 26, 20, 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Our Signature Menu',
                        style: TextStyle(
                          color: cream,
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 6),
                      Text(
                        'Crafted for extraordinary taste',
                        style: TextStyle(
                          color: Colors.white54,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                  const Icon(
                    Icons.auto_awesome,
                    color: gold,
                    size: 25,
                  ),
                ],
              ),
            ),

            ListView.builder(
              itemCount: controller.dataMakanan.length,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              padding: const EdgeInsets.symmetric(horizontal: 16),
              itemBuilder: (context, index) {
                final makanan = controller.dataMakanan[index];

                return FoodMenuCard(
                  makanan: makanan,
                  onTap: () {
                    Get.to(
                      () => DetailMakananPage(),
                      arguments: makanan,
                    );
                  },
                );
              },
            ),

            const Padding(
              padding: EdgeInsets.fromLTRB(20, 8, 20, 28),
              child: Center(
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
            ),
          ],
        ),
      ),
     )
    );
  }
}
