import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final String title;
  final bool isPass;
  final TextEditingController controller;
  const MyTextField(
      {super.key,
      required this.title,
      required this.isPass,
      required this.controller});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      obscureText: isPass,
      decoration: InputDecoration(
        border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10))),
        hintText: title,
      ),
    );
  }
}
