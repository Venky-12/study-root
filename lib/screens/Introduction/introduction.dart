import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_1/configs/themes/app_colors.dart';
import 'package:get/get.dart';

class AppIntroductionScreen extends StatelessWidget {
  const AppIntroductionScreen({super.key});
  static const String routeName = "/subjects";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            decoration: BoxDecoration(gradient: mainGradient()),
            alignment: Alignment.center,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: Get.width * 0.2),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.star,
                      color: Colors.amberAccent,
                      size: 65,
                    ),
                    const SizedBox(height: 40),
                    Text('FOCUS ON UNDERSTANDING RATHER THAN MEMORIZING',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.raleway(
                          textStyle: const TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.w600),
                        )),
                    const SizedBox(height: 40),

                    IconButton(
                      onPressed: () {
                        Get.offAndToNamed("/authpage");
                      },
                      icon: const Icon(Icons.arrow_forward, size: 35),
                    )
                    // AppCircleButton(
                    //     onTap: () => Get.offAndToNamed("/subjects"),
                    //     child: const Icon(Icons.arrow_forward, size: 35))
                  ]),
            )));
  }
}
