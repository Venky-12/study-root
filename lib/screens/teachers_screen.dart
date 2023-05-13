import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_1/configs/themes/app_colors.dart';
import 'package:project_1/screens/Languages.dart';
import 'package:project_1/screens/chat_gpt_info_screen.dart';
import 'package:project_1/screens/home_screen.dart';
import 'package:project_1/screens/login_page.dart';
import 'package:project_1/tools/my_button_log.dart';
import 'package:url_launcher/url_launcher.dart';

class TeachersScreen extends StatefulWidget {
  TeachersScreen({super.key});

  @override
  State<TeachersScreen> createState() => _TeachersScreenState();
}

class _TeachersScreenState extends State<TeachersScreen> {
  final user = FirebaseAuth.instance.currentUser!;
  final Uri url = Uri.parse(
      "https://console.firebase.google.com/u/0/project/projectstudyroot-cda08/firestore/data/~2F");

  void signUserOut() {
    FirebaseAuth.instance.signOut();
    Get.to(() => LoginPage(onTap: () {}));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text(
          "Study Root",
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 23,
              fontStyle: FontStyle.normal),
        ),
        backgroundColor: Colors.purple,
        actions: [
          Container(
            color: Colors.purple,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: signUserOut,
                  icon: Row(
                    children: const [
                      Icon(
                        Icons.logout,
                        color: Colors.white,
                        size: 25,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
        elevation: 0,
      ),
      body: Container(
        decoration: BoxDecoration(gradient: mainGradient()),
        child: SafeArea(
          child: Center(
              child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                MyButton(
                  onTap: (() {
                    launchUrl(url);
                  }),
                  text: "FireStore Database",
                  textColor: Colors.white,
                  buttonColor: Colors.purple.shade700,
                ),
              ],
            ),
          )),
        ),
      ),
    );
  }
}
