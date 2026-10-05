import 'package:flutter/material.dart';
import 'package:belajar_flutter1/components/custom_textfield.dart';
import 'package:belajar_flutter1/routes.dart';
import 'package:belajar_flutter1/components/registration_textfield.dart';
import 'package:get/get.dart';

class RegistrationPage extends StatelessWidget {
  const RegistrationPage({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController txtNama = TextEditingController();
    TextEditingController txtAgama = TextEditingController();
    TextEditingController txtEmail = TextEditingController();
    TextEditingController txtNoWa = TextEditingController();

    RxString jenisKelamin = ''.obs;

    return Scaffold(
      appBar: AppBar(title: Text("Registration Page")),
      body: Column(
        children: [
          RegistrationTextfield(txtController: txtNama, myHint: "input name"),
          RegistrationTextfield(txtController: txtAgama, myHint: "input agama"),
          RegistrationTextfield(txtController: txtEmail, myHint: "input email"),
          RegistrationTextfield(txtController: txtNoWa, myHint: "input no WhatsApp"),
          DropdownButtonFormField<String>(
            value: jenisKelamin.value.isEmpty ? null : jenisKelamin.value,
            decoration: InputDecoration(
              hintText: "Pilih jenis kelamin",
              border: OutlineInputBorder(),
            ),
            items: const [
              DropdownMenuItem(value: "Laki-laki", child: Text("Laki-laki")),
              DropdownMenuItem(value: "Perempuan", child: Text("Perempuan")),
            ],
            onChanged: (value) => jenisKelamin.value = value!,
          ),
          ElevatedButton(
            onPressed: () {
              // get to untuk pindah
              // argument untuk kirim data
              // get off
              Get.toNamed(
                Routes.confirm_registration,
                arguments: {
                  'name': txtNama.text.toString(),
                  'jenis_kelamin': jenisKelamin.value,
                  'agama': txtAgama.text.toString(),
                  'email': txtEmail.text.toString(),
                  'no_wa': txtNoWa.text.toString(),
                },
              );
            },
            child: Text("Send"),
          ),
        ],
      ),
    );
  }
}