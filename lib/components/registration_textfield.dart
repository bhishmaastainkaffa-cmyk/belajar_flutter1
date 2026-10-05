import 'package:flutter/material.dart';

class RegistrationTextfield extends StatelessWidget {
  final String myHint;
  final TextEditingController txtController;

  const RegistrationTextfield({
    super.key,
    required this.myHint,
    required this.txtController,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: txtController,
      decoration: InputDecoration(
        hintText: myHint,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}