import 'package:flutter/material.dart';

class CustomCreditTextField extends StatelessWidget {
  const CustomCreditTextField(
      {super.key, required this.hintText, this.keyboardType, this.controller});
  final String hintText;
  final TextInputType? keyboardType;
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, right: 10, left: 10),
      child: SizedBox(
        height: 40,
        child: TextField(
          controller: controller,
          decoration: InputDecoration(
            isDense: true,
            hintText: hintText,
            hintStyle: const TextStyle(color: Colors.grey, fontSize: 14),
            fillColor: Colors.white,
            filled: true,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
              borderSide: BorderSide.none,
            ),
          ),
          style: const TextStyle(color: Colors.blue),
          keyboardType: keyboardType,
        ),
      ),
    );
  }
}
