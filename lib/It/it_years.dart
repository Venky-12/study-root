import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_1/It/semisters/it_1_semisters.dart';
import 'package:project_1/It/semisters/it_2_semisters.dart';
import 'package:project_1/It/semisters/it_3_semisters.dart';
import 'package:project_1/It/semisters/it_4_semisters.dart';
import 'package:project_1/configs/themes/app_colors.dart';

import '../tools/my_button_log.dart';

class IT_years extends StatefulWidget {
  const IT_years({super.key});

  @override
  State<IT_years> createState() => _IT_yearsState();
}

class _IT_yearsState extends State<IT_years> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: const Text(
          "IT Years",
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
                  Get.to(() => const SemistersItI());
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
                  Get.to(() => const SemistersItII());
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
                  Get.to(() => const SemistersItIII());
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
                  Get.to(() => const SemistersItIV());
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
