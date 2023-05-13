import 'package:firebase_auth/firebase_auth.dart';

import 'package:flutter/material.dart';

import 'package:project_1/configs/themes/app_colors.dart';

import 'package:project_1/tools/custom_app_bar.dart';
import 'package:project_1/tools/my_button_log.dart';
import 'package:url_launcher/url_launcher.dart';

class PythonScreen extends StatefulWidget {
  PythonScreen({super.key});

  @override
  State<PythonScreen> createState() => _PythonScreenState();
}

class _PythonScreenState extends State<PythonScreen> {
  final user = FirebaseAuth.instance.currentUser!;

  @override
  Widget build(BuildContext context) {
    final Uri url1 = Uri.parse("https://docs.python.org/3/");
    final Uri url2 = Uri.parse(
        "https://www.programiz.com/python-programming/online-compiler/");
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.grey,
      appBar: const CustomAppBar(
        showActionIcon: false,
      ),
      body: Container(
        decoration: BoxDecoration(gradient: mainGradient()),
        child: SafeArea(
          child: Center(
              child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Text(
                  "Python",
                  style: TextStyle(fontSize: 35, color: Colors.white),
                ),
                const SizedBox(
                  height: 40,
                ),
                MyButton(
                  onTap: (() {
                    launchUrl(url1);
                  }),
                  text: "Python Docs",
                  textColor: Colors.white,
                  buttonColor: Colors.purple.shade700,
                ),
                const SizedBox(
                  height: 15,
                ),
                MyButton(
                  onTap: (() {
                    launchUrl(url2);
                  }),
                  text: "Compiler",
                  textColor: Colors.white,
                  buttonColor: Colors.purple.shade700,
                ),
                const SizedBox(
                  height: 500,
                ),
              ],
            ),
          )),
        ),
      ),
    );
  }
}
