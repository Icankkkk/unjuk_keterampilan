import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:unjuk_keterampilan/config/app_color.dart';
import 'package:unjuk_keterampilan/pages/auth/login_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light().copyWith(
        primaryColor: AppColor.lev1,
        colorScheme: const ColorScheme.light(
          primary: AppColor.lev1,
          secondary: AppColor.lev2,
        ),
      ),
      home: LoginPage(),
    );
  }
}
