import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_1/configs/themes/custom_text_styles.dart';
import 'package:project_1/configs/themes/ui_parametres.dart';
import 'package:project_1/services/question_paper_model.dart';
import 'package:project_1/tools/app_icon_text.dart';
import 'package:quickalert/quickalert.dart';

import '../controllers/eee8_qpc.dart';

class EEE8QuestionCard extends StatelessWidget {
  EEE8QuestionCard({super.key, required this.model});

  final QuestionPaperModel model;
  final Eee8QPC _questionPaperController = Eee8QPC();

  @override
  Widget build(BuildContext context) {
    int counter = 0;
    void showAlert() {
      QuickAlert.show(
          context: context,
          title: "Are you sure?",
          text: "Do you want to take the test?",
          type: QuickAlertType.info);
    }

    // ignore: no_leading_underscores_for_local_identifiers
    const double _padding = 10.0;
    return Ink(
      decoration: BoxDecoration(
          borderRadius: UIParameters.cardBorderRadius,
          color: Theme.of(context).cardColor),
      child: InkWell(
        onTap: (() {
          if (counter == 0) {
            showAlert();
            counter = 1;
          } else {
            _questionPaperController.navigateToQuestions(paper: model);
            counter = 0;
          }
        }),
        child: Padding(
          padding: const EdgeInsets.all(_padding),
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: ColoredBox(
                      color: Theme.of(context).primaryColor.withOpacity(0.1),
                      child: SizedBox(
                          width: Get.width * 0.15,
                          height: Get.width * 0.30,
                          child: Image.asset("images/app_splash_logo.png")),
                    ),
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          model.title,
                          style: cardTitles(context),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10, bottom: 15),
                          child: Text(
                            model.description,
                          ),
                        ),
                        Row(
                          children: [
                            AppIconText(
                                icon: Icon(Icons.help_outline_sharp,
                                    color: Get.isDarkMode
                                        ? Colors.white
                                        : Theme.of(context).primaryColor),
                                text: Text(
                                  "${model.questionCount} questions",
                                  style: detailText.copyWith(
                                    color: Get.isDarkMode
                                        ? Colors.white
                                        : Theme.of(context).primaryColor,
                                  ),
                                )),
                            const SizedBox(
                              width: 15,
                            ),
                            AppIconText(
                                icon: Icon(Icons.timer,
                                    color: Get.isDarkMode
                                        ? Colors.white
                                        : Theme.of(context).primaryColor),
                                text: Text(
                                  model.timeInMinutes(),
                                  style: detailText.copyWith(
                                    color: Get.isDarkMode
                                        ? Colors.white
                                        : Theme.of(context).primaryColor,
                                  ),
                                ))
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
              Positioned(
                  bottom: -_padding,
                  right: -_padding,
                  child: GestureDetector(
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 8, horizontal: 20),
                      decoration: BoxDecoration(
                          color: Theme.of(context).primaryColor,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(cardBorderRadius),
                              bottomRight: Radius.circular(cardBorderRadius))),
                      child: const Icon(Icons.timer),
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
