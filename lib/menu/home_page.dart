import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:belajar_flutter1/controllers/list_makanan_controller.dart';
import 'package:belajar_flutter1/components/food_menu_card.dart';
import 'package:belajar_flutter1/routes.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final controller = Get.put(ListMakananController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text("Home"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Menu Makanan",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 12),
            SizedBox(
              height: 150,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: controller.dataMakanan.length,
                itemBuilder: (context, index) {
                  final makanan = controller.dataMakanan[index];

                  return SizedBox(
                    width: 260,
                    child: Padding(
                      padding: const EdgeInsets.only(right: 12),
                      child: InkWell(
                        onTap: () {
                          Get.toNamed(
                            Routes.detail_makanan,
                            arguments: makanan,
                          );
                        },
                        child: FoodMenuCard(
                          makanan: makanan,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
