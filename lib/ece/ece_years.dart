import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_1/configs/themes/app_colors.dart';
import 'package:project_1/ece/semisters/ece_III_semisters.dart';
import 'package:project_1/ece/semisters/ece_II_semisters.dart';
import 'package:project_1/ece/semisters/ece_IV_semisters.dart';
import 'package:project_1/ece/semisters/ece_I_semisters.dart';
import 'package:project_1/tools/custom_app_bar.dart';
import '../tools/my_button_log.dart';

class ECE_years extends StatefulWidget {
  const ECE_years({super.key});

  @override
  State<ECE_years> createState() => _ECE_yearsState();
}

class _ECE_yearsState extends State<ECE_years> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: const Text(
          "ECE Years",
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
                  Get.to(() => const SemistersECEI());
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
                  Get.to(() => const SemistersECEII());
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
                  Get.to(() => const SemistersECEIII());
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
                  Get.to(() => const SemistersECEIV());
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
