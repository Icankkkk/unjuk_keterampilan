import 'package:flutter/material.dart';
import 'package:unjuk_keterampilan/config/app_color.dart';

class MyDivider extends StatelessWidget {
  const MyDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: const EdgeInsets.only(top: 30, bottom: 8),
        width: 72,
        height: 6,
        decoration: BoxDecoration(
          color: AppColor.lev2,
          borderRadius: BorderRadius.circular(9),
        ),
      ),
    );
  }
}
