import 'package:flutter/material.dart';

class MyElevatedButton extends StatelessWidget {
  const MyElevatedButton({
    super.key,
    required this.textButton,
    required this.onPressed,
    this.textStyle,
    this.roundedRectangleBorder,
    this.margin = const EdgeInsets.fromLTRB(0, 16, 0, 10),
  });

  final String textButton;
  final TextStyle? textStyle;
  final Function()? onPressed;
  final RoundedRectangleBorder? roundedRectangleBorder;
  final EdgeInsetsGeometry? margin;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.all(16),
          shape: roundedRectangleBorder,
        ),
        onPressed: onPressed,
        child: Text(
          textButton,
          style: textStyle,
        ),
      ),
    );
  }
}
