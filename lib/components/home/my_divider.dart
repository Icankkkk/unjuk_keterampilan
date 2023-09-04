import 'package:flutter/material.dart';
import 'package:unjuk_keterampilan/config/app_color.dart';

class MyDivider extends StatelessWidget {
  const MyDivider({
    super.key,
    this.width,
    this.height,
    this.margin = const EdgeInsets.only(top: 30, bottom: 8),
  });

  final double? width;
  final double? height;
  final EdgeInsetsGeometry? margin;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: margin,
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: AppColor.lev2,
          borderRadius: BorderRadius.circular(9),
        ),
      ),
    );
  }
}
