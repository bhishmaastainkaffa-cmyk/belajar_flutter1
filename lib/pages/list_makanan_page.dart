
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:belajar_flutter1/controllers/list_makanan_controller.dart';
import 'package:belajar_flutter1/pages/detail_makanan_page.dart';
import 'package:belajar_flutter1/components/food_menu_card.dart';

class ListMakananPage extends StatelessWidget {
  ListMakananPage({super.key});

  final controller = Get.put(ListMakananController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('List Makanan'),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(10),
        itemCount: controller.dataMakanan.length,
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
    );
  }
}
