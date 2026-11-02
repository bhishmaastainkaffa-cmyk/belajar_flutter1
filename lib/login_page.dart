import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:belajar_flutter1/controllers/login_controller.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final controller = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("login api"),
      ),
      body: Center(
        child: Column(
          children: [
            TextField(
              controller: controller.txtUsername,
              decoration: InputDecoration(
                labelText: "input username",
              ),
            ),

            TextField(
              controller: controller.txtPassword,
              obscureText: true,
              decoration: InputDecoration(
                labelText: "input password",
              ),
            ),

            Obx(
              () => controller.isLoading.value
                  ? Center(
                      child: CircularProgressIndicator(),
                    )
                  : OutlinedButton(
                      onPressed: () {
                        controller.login();
                      },
                      child: Text("login"),
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
