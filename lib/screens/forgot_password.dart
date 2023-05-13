// ignore_for_file: avoid_print
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_1/configs/themes/app_colors.dart';
import 'package:project_1/screens/forgot_password_notification_screen.dart';
import 'package:project_1/services/login_or_register.dart';
import '../tools/my_button_log.dart';
import '../tools/my_textfield_log.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  // // text editing controllers
  final forgotPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Container(
        decoration: BoxDecoration(gradient: mainGradient()),
        child: SafeArea(
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(height: 50),

                  // logo
                  const Icon(
                    Icons.mail,
                    size: 100,
                  ),

                  const SizedBox(height: 30),

                  // welcome back, you've been missed!
                  const Text(
                    "Enter your Email",
                    style: TextStyle(fontSize: 16, color: onSurfaceTextColor),
                  ),

                  const SizedBox(height: 25),

                  // username textfield
                  MyTextField(
                    controller: forgotPasswordController,
                    hintText: 'Email',
                    obscureText: false,
                    prefixedIcon: const Icon(Icons.fingerprint_outlined),
                  ),

                  const SizedBox(height: 10),

                  MyButton(
                      text: "Forgot Password",
                      textColor: Colors.white,
                      buttonColor: Colors.purple.shade700,
                      onTap: () async {
                        var forgotEmail = forgotPasswordController.text.trim();

                        try {
                          await FirebaseAuth.instance
                              .sendPasswordResetEmail(email: forgotEmail)
                              .then((value) => {
                                    print("Email Sent!"),
                                    Get.off(() => const LoginOrRegisterPage())
                                  });
                        } on FirebaseAuthException catch (e) {
                          print("Error $e");
                        }
                        Get.to(() => const ForgetPasswordNotificationScreen());
                      }),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
