import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_1/configs/themes/app_colors.dart';
import 'package:project_1/configs/themes/custom_text_styles.dart';
import 'package:project_1/configs/themes/ui_parametres.dart';
import 'package:project_1/eee/eee_5/controllers/eee5_qpc.dart';
import 'package:project_1/eee/eee_5/tools/eee5_question_card.dart';
import 'package:project_1/screens/options_screen.dart';
import 'package:project_1/tools/content_area.dart';

class EeeSem5 extends StatelessWidget {
  const EeeSem5({super.key});
  static const String routeName = "/eeesem5";

  @override
  Widget build(BuildContext context) {
    Eee5QPC questionPaperController = Get.find();
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
                              return EEE5QuestionCard(
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
