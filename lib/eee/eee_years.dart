import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_1/configs/themes/app_colors.dart';
import 'package:project_1/ece/semisters/ece_III_semisters.dart';
import 'package:project_1/ece/semisters/ece_II_semisters.dart';
import 'package:project_1/ece/semisters/ece_IV_semisters.dart';
import 'package:project_1/ece/semisters/ece_I_semisters.dart';
import 'package:project_1/eee/semisters/eee_1_semisters.dart';
import 'package:project_1/eee/semisters/eee_2_semisters.dart';
import 'package:project_1/eee/semisters/eee_3_semisters.dart';
import 'package:project_1/eee/semisters/eee_4_semisters.dart';
import 'package:project_1/tools/custom_app_bar.dart';
import '../tools/my_button_log.dart';

class EEE_years extends StatefulWidget {
  const EEE_years({super.key});

  @override
  State<EEE_years> createState() => _EEE_yearsState();
}

class _EEE_yearsState extends State<EEE_years> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: const Text(
          "EEE Years",
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
                  Get.to(() => const SemistersEEEI());
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
                  Get.to(() => const SemistersEEEII());
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
                  Get.to(() => const SemistersEEEIII());
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
                  Get.to(() => const SemistersEEEIV());
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
