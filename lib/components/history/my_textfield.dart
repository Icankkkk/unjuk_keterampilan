import 'package:d_input/d_input.dart';
import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  const MyTextField({
    super.key,
    this.hint,
    this.title,
    required this.controllerName,
    this.inputType,
  });

  final TextEditingController controllerName;
  final String? hint;
  final String? title;
  final TextInputType? inputType;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(0, 16, 0, 8),
      child: DInput(
        contentPadding: const EdgeInsets.symmetric(
          vertical: 18,
          horizontal: 16,
        ),
        controller: TextEditingController(),
        hint: hint,
        title: title,
        inputType: inputType,
      ),
    );
  }
}
