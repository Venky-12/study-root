import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_1/configs/themes/app_colors.dart';
import 'package:project_1/cse/semisters/cse_III_semisters.dart';
import 'package:project_1/cse/semisters/cse_II_semisters.dart';
import 'package:project_1/cse/semisters/cse_IV_semisters.dart';
import 'package:project_1/cse/semisters/semisters.dart';
import 'package:project_1/tools/custom_app_bar.dart';
import '../tools/my_button_log.dart';

class CSE_years extends StatefulWidget {
  const CSE_years({super.key});

  @override
  State<CSE_years> createState() => _CSE_yearsState();
}

class _CSE_yearsState extends State<CSE_years> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: const Text(
          "CSE Years",
          style: TextStyle(
              fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(gradient: mainGradient()),
        child: Padding(
          padding: const EdgeInsets.only(top: 150),
          child: Center(
              child: Column(
            children: [
              const Text(
                "Select the year",
                style: TextStyle(fontSize: 35, color: Colors.white),
              ),
              const SizedBox(
                height: 30,
              ),
              MyButton(
                onTap: (() {
                  Get.to(() => const SemistersCSE());
                }),
                text: "I-year",
                textColor: Colors.white,
                buttonColor: Colors.purple.shade700,
              ),
              const SizedBox(
                height: 15,
              ),
              MyButton(
                onTap: (() {
                  Get.to(() => const SemistersCSEII());
                }),
                text: "II-year",
                textColor: Colors.white,
                buttonColor: Colors.purple.shade700,
              ),
              const SizedBox(
                height: 15,
              ),
              MyButton(
                onTap: (() {
                  Get.to(() => const SemistersCSEIII());
                }),
                text: "III-year",
                textColor: Colors.white,
                buttonColor: Colors.purple.shade700,
              ),
              const SizedBox(
                height: 15,
              ),
              MyButton(
                onTap: (() {
                  Get.to(() => const SemistersCSEIV());
                }),
                text: "IV-year",
                textColor: Colors.white,
                buttonColor: Colors.purple.shade700,
              ),
            ],
          )),
        ),
      ),
    );
  }
}
