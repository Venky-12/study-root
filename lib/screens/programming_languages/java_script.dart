import 'package:firebase_auth/firebase_auth.dart';

import 'package:flutter/material.dart';

import 'package:project_1/configs/themes/app_colors.dart';

import 'package:project_1/tools/custom_app_bar.dart';
import 'package:project_1/tools/my_button_log.dart';
import 'package:url_launcher/url_launcher.dart';

class JavaScriptScreen extends StatefulWidget {
  JavaScriptScreen({super.key});

  @override
  State<JavaScriptScreen> createState() => _JavaScriptScreenState();
}

class _JavaScriptScreenState extends State<JavaScriptScreen> {
  final user = FirebaseAuth.instance.currentUser!;

  @override
  Widget build(BuildContext context) {
    final Uri url1 =
        Uri.parse("https://developer.mozilla.org/en-US/docs/Web/JavaScript");
    final Uri url2 =
        Uri.parse("https://www.programiz.com/javascript/online-compiler/");
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
                  "Java Script",
                  style: TextStyle(fontSize: 35, color: Colors.white),
                ),
                const SizedBox(
                  height: 40,
                ),
                MyButton(
                  onTap: (() {
                    launchUrl(url1);
                  }),
                  text: "Javascript Docs",
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
