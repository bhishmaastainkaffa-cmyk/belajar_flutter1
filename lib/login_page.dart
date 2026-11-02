import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:belajar_flutter1/controllers/login_controller.dart';
import 'package:belajar_flutter1/components/custom_textfield.dart';
import 'package:belajar_flutter1/components/custom_button.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final controller = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("login api")),
      body: Center(
        child: Column(
          children: [
            CustomTextfield(
              myHint: "input username",
              txtController: controller.txtUsername,
              onlyNumber: false,
            ),

            CustomTextfield(
              myHint: "input password",
              txtController: controller.txtPassword,
              onlyNumber: false,
              obscureText: true,
            ),

            Obx(
              () => controller.isLoading.value
                  ? Center(child: CircularProgressIndicator())
                  : CustomButton(
                      text: "login",
                      onPressed: () {
                        controller.login();
                      },
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
