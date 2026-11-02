import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTextfield extends StatelessWidget {
  final String myHint;
  final TextEditingController txtController;
  final bool obscureText;
  final bool onlyNumber;

  const CustomTextfield({
    super.key,
    required this.myHint,
    required this.txtController,
    this.obscureText = false,
    this.onlyNumber = true,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: txtController,
      obscureText: obscureText,
      keyboardType: onlyNumber
          ? TextInputType.number
          : TextInputType.text,
      inputFormatters: onlyNumber
          ? [FilteringTextInputFormatter.digitsOnly]
          : null,
      decoration: InputDecoration(
        hintText: myHint,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
