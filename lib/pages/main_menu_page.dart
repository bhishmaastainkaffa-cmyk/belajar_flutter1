
import 'package:flutter/material.dart';
import 'package:belajar_flutter1/controllers/main_menu_controller.dart';
import 'package:get/get.dart';

class MainMenuPage extends StatelessWidget {
  MainMenuPage({super.key});

  final mainMenuController = Get.put(MainMenuController());

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        body: IndexedStack(
          index: mainMenuController.selectedIndex.value,
          children: mainMenuController.listPages,
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: mainMenuController.selectedIndex.value,
          onTap: mainMenuController.changePage,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.grey,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          items: [
            BottomNavigationBarItem(
              icon: const Icon(Icons.home_outlined),
              activeIcon: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 6,
                ),
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.15),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: const Icon(Icons.home),
              ),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: const Icon(Icons.history_outlined),
              activeIcon: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 6,
                ),
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.15),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: const Icon(Icons.history),
              ),
              label: "History",
            ),
            BottomNavigationBarItem(
              icon: const Icon(Icons.person_outline),
              activeIcon: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 6,
                ),
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.15),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: const Icon(Icons.person),
              ),
              label: "Profile",
            ),
          ],
        ),
      ),
    );
  }
}
