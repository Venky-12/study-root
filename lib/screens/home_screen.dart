import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_1/configs/themes/app_colors.dart';
import 'package:project_1/eee/eee_years.dart';
import 'package:project_1/screens/login_page.dart';
import 'package:project_1/cse/years_cse.dart';
import 'package:project_1/tools/custom_app_bar.dart';
import 'package:project_1/tools/my_button_log.dart';
import '../It/it_years.dart';
import '../ece/ece_years.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  static const String routeName = "/homescreen";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final user = FirebaseAuth.instance.currentUser!;

  void signUserOut() {
    FirebaseAuth.instance.signOut();
    Get.to(() => LoginPage(onTap: () {}));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: const Text(
          "Branches",
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
                  height: 30,
                ),
                const Text(
                  "Select your branch",
                  style: TextStyle(fontSize: 35, color: Colors.white),
                ),
                const SizedBox(
                  height: 30,
                ),
                MyButton(
                  onTap: (() {
                    Get.to(() => const CSE_years());
                  }),
                  text: "CSE",
                  textColor: Colors.white,
                  buttonColor: Colors.purple.shade700,
                ),
                const SizedBox(
                  height: 15,
                ),
                MyButton(
                  onTap: (() {
                    Get.to(() => const ECE_years());
                  }),
                  text: "ECE",
                  textColor: Colors.white,
                  buttonColor: Colors.purple.shade700,
                ),
                const SizedBox(
                  height: 15,
                ),
                MyButton(
                  onTap: (() {
                    Get.to(() => const EEE_years());
                  }),
                  text: "EEE",
                  textColor: Colors.white,
                  buttonColor: Colors.purple.shade700,
                ),
                const SizedBox(
                  height: 15,
                ),
                MyButton(
                  onTap: (() {
                    Get.to(() => const IT_years());
                  }),
                  text: "IT",
                  textColor: Colors.white,
                  buttonColor: Colors.purple.shade700,
                ),
                const SizedBox(
                  height: 15,
                ),
                MyButton(
                  onTap: () => Get.offAndToNamed("/subjects"),
                  text: "SAMPLE",
                  textColor: Colors.white,
                  buttonColor: Colors.purple.shade700,
                ),
                const SizedBox(
                  height: 15,
                ),
              ],
            ),
          )),
        ),
      ),
    );
  }
}
