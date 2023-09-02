import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:unjuk_keterampilan/components/my_text_field.dart';
import 'package:unjuk_keterampilan/config/app_asset.dart';
import 'package:unjuk_keterampilan/config/app_color.dart';
import 'package:unjuk_keterampilan/pages/auth/register_page.dart';
import 'package:unjuk_keterampilan/pages/home_page.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  // method login
  void login(String email, String password) {
    bool success =
        emailController.text == email && passwordController.text == password;
    if (success) {
      Get.to(const HomePage());
    }
  }

  @override
  Widget build(BuildContext context) {
    const String email = 'test@gmail.com';
    const String password = '123';

    return Scaffold(
      backgroundColor: AppColor.lev1,
      body: LayoutBuilder(
        builder: (context, constraints) {
          return SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(
                minHeight: constraints.maxHeight,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox(),
                  Form(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 24),
                      child: Column(
                        children: [
                          // Logo
                          Image.asset(AppAsset.logo, height: 100),
                          const SizedBox(height: 70),
                          // email
                          MyTextField(
                            textController: emailController,
                            hintText: 'Email',
                            isObsecure: false,
                          ),
                          const SizedBox(height: 20),
                          // password
                          MyTextField(
                            textController: passwordController,
                            hintText: 'Password',
                            isObsecure: true,
                          ),
                          const SizedBox(height: 40),
                          // login button
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: AppColor.lev3,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(28),
                              ),
                            ),
                            onPressed: () {
                              login(email, password);
                            },
                            child: const Padding(
                              padding: EdgeInsets.symmetric(
                                horizontal: 40,
                                vertical: 16,
                              ),
                              child: Text(
                                'Login',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  // REGISTER
                  Padding(
                    padding: const EdgeInsets.fromLTRB(16, 16, 16, 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'Belum punya akun? ',
                          style: TextStyle(fontSize: 16, color: Colors.white),
                        ),
                        GestureDetector(
                          onTap: () {
                            Get.to(RegisterPage());
                          },
                          child: const Text(
                            'Daftar',
                            style: TextStyle(
                              color: AppColor.lev4,
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
