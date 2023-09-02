import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:unjuk_keterampilan/components/my_text_field.dart';
import 'package:unjuk_keterampilan/config/app_asset.dart';
import 'package:unjuk_keterampilan/config/app_color.dart';
import 'package:unjuk_keterampilan/pages/auth/login_page.dart';

class RegisterPage extends StatelessWidget {
  RegisterPage({super.key});

  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
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
                          // nama
                          MyTextField(
                            textController: nameController,
                            hintText: 'Nama',
                            isObsecure: false,
                          ),
                          const SizedBox(height: 20),
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
                            onPressed: () {},
                            child: const Padding(
                              padding: EdgeInsets.symmetric(
                                horizontal: 40,
                                vertical: 16,
                              ),
                              child: Text(
                                'Register',
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
                          'Sudah punya akun? ',
                          style: TextStyle(fontSize: 16, color: Colors.white),
                        ),
                        GestureDetector(
                          onTap: () {
                            Get.to(LoginPage());
                          },
                          child: const Text(
                            'Masuk',
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
