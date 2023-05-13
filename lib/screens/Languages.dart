import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_1/configs/themes/app_colors.dart';
import 'package:project_1/screens/programming_languages/cpp_screen.dart';
import 'package:project_1/screens/programming_languages/java_screen.dart';
import 'package:project_1/screens/programming_languages/java_script.dart';
import 'package:project_1/screens/programming_languages/python_screen.dart';
import 'package:project_1/tools/custom_app_bar.dart';
import 'package:project_1/tools/my_button_log.dart';

class LanguagesScreen extends StatefulWidget {
  LanguagesScreen({super.key});

  @override
  State<LanguagesScreen> createState() => _LanguagesScreenState();
}

class _LanguagesScreenState extends State<LanguagesScreen> {
  final user = FirebaseAuth.instance.currentUser!;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: const Text(
          "Programming Languages",
          style: TextStyle(
              fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(gradient: mainGradient()),
        child: SafeArea(
          child: Center(
              child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 40,
                ),
                MyButton(
                  onTap: (() {
                    Get.to(() => CPPScreen());
                  }),
                  text: "C++",
                  textColor: Colors.white,
                  buttonColor: Colors.purple.shade700,
                ),
                const SizedBox(
                  height: 15,
                ),
                MyButton(
                  onTap: (() {
                    Get.to(() => JavaScreen());
                  }),
                  text: "JAVA",
                  textColor: Colors.white,
                  buttonColor: Colors.purple.shade700,
                ),
                const SizedBox(
                  height: 15,
                ),
                MyButton(
                  onTap: (() {
                    Get.to(() => PythonScreen());
                  }),
                  text: "PYTHON",
                  textColor: Colors.white,
                  buttonColor: Colors.purple.shade700,
                ),
                const SizedBox(
                  height: 15,
                ),
                MyButton(
                  onTap: (() {
                    Get.to(() => JavaScriptScreen());
                  }),
                  text: "JAVA SCRIPT",
                  textColor: Colors.white,
                  buttonColor: Colors.purple.shade700,
                ),
                const SizedBox(
                  height: 55,
                ),
              ],
            ),
          )),
        ),
      ),
    );
  }
}
