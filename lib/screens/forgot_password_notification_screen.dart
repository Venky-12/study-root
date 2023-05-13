import 'package:flutter/material.dart';
import 'package:project_1/configs/themes/app_colors.dart';

class ForgetPasswordNotificationScreen extends StatelessWidget {
  const ForgetPasswordNotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amberAccent,
      body: Container(
        decoration: BoxDecoration(
          gradient: mainGradient(),
        ),
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              "images/app_splash_logo.png",
              height: 140,
            ),
            const SizedBox(
              height: 30,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Text(
                "A link has been sent to your email to reset the password !!",
                style: TextStyle(color: onSurfaceTextColor, fontSize: 20),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
