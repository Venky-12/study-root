import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_1/configs/themes/app_colors.dart';
import 'package:project_1/configs/themes/custom_text_styles.dart';
import 'package:project_1/configs/themes/ui_parametres.dart';

import 'package:project_1/eee/eee_1/tools/eee1_question_card.dart';
import 'package:project_1/eee/eee_2/tools/eee2_question_card.dart';
import 'package:project_1/screens/options_screen.dart';
import 'package:project_1/tools/content_area.dart';

import 'controllers/eee2_qpc.dart';

class EeeSem2 extends StatelessWidget {
  const EeeSem2({super.key});
  static const String routeName = "/eeesem2";

  @override
  Widget build(BuildContext context) {
    Eee2QPC questionPaperController = Get.find();
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(gradient: mainGradient()),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.all(mobileScreenPadding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    InkWell(
                      onTap: (() {
                        Get.to(() => OptionsScreen());
                      }),
                      child: const Icon(
                        Icons.arrow_back_ios,
                        // color: Colors.red,
                        size: 25,
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        const Icon(
                          Icons.quiz,
                          // color: Colors.red,
                          size: 25,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          "quiz",
                          style: detailText.copyWith(color: onSurfaceTextColor),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      "what do you want to learn today?",
                      style: headerText,
                    )
                  ],
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Container(
                    child: ContentArea(
                      addPadding: false,
                      child: Obx(() => ListView.separated(
                            padding: UIParameters.mobileScreenPadding,
                            shrinkWrap: true,
                            itemBuilder: ((context, index) {
                              return EEE2QuestionCard(
                                model: questionPaperController.allPapers[index],
                              );
                            }),
                            separatorBuilder: ((context, index) {
                              return const SizedBox(
                                height: 20,
                              );
                            }),
                            itemCount: questionPaperController.allPapers.length,
                          )),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
