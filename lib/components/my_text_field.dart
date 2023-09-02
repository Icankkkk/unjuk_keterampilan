import 'package:flutter/material.dart';
import '../config/app_color.dart';

class MyTextField extends StatelessWidget {
  const MyTextField({
    super.key,
    required this.hintText,
    required this.isObsecure,
    required this.textController,
  });

  final String hintText;
  final bool isObsecure;
  final TextEditingController textController;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: textController,
      style: const TextStyle(color: Colors.white),
      cursorColor: Colors.white,
      obscureText: isObsecure,
      decoration: InputDecoration(
        fillColor: AppColor.lev2.withOpacity(0.5),
        filled: true,
        hintText: hintText,
        hintStyle: const TextStyle(
          color: Colors.white54,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: BorderSide.none,
        ),
        isDense: true,
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 16,
        ),
      ),
    );
  }
}
