import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_1/configs/themes/app_colors.dart';
import 'package:project_1/tools/custom_app_bar.dart';
import '../../tools/my_button_log.dart';

class SemistersCSEIII extends StatefulWidget {
  const SemistersCSEIII({super.key});

  @override
  State<SemistersCSEIII> createState() => _SemistersCSEIIIState();
}

class _SemistersCSEIIIState extends State<SemistersCSEIII> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: const Text(
          "Semisters",
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
              const Text("Choose your semister",
                  style: TextStyle(fontSize: 25, color: onSurfaceTextColor)),
              const SizedBox(
                height: 30,
              ),
              MyButton(
                onTap: () => Get.offAndToNamed("/cse_sem5"),
                text: "Semister-V",
                textColor: Colors.white,
                buttonColor: Colors.purple.shade700,
              ),
              const SizedBox(
                height: 15,
              ),
              MyButton(
                onTap: () => Get.offAndToNamed("/cse_sem6"),
                text: "Semister-VI",
                textColor: Colors.white,
                buttonColor: Colors.purple.shade700,
              ),
              const SizedBox(
                height: 15,
              ),
            ],
          )),
        ),
      ),
    );
  }
}
