import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_1/configs/themes/background_decoration.dart';
import 'package:project_1/configs/themes/custom_text_styles.dart';
import 'package:project_1/configs/themes/ui_parametres.dart';
import 'package:project_1/tools/content_area.dart';
import 'package:project_1/tools/custom_app_bar.dart';
import 'package:project_1/tools/main_button.dart';
import 'package:project_1/tools/questions/answer_card.dart';
import 'package:project_1/tools/questions/question_number_card.dart';
import '../../../controllers/question_papers/count_down_timer.dart';
import '../controllers/ece1_questions_controller.dart';

class Ece1TestOverviewScreen extends GetView<Ece1QuestionsController> {
  const Ece1TestOverviewScreen({super.key});

  static const String routeName = "/ece1testoverview";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: CustomAppBar(
          title: controller.completedTest,
          showActionIcon: false,
        ),
        body: BackgroundDecoration(
            child: Column(
          children: [
            Expanded(
              child: ContentArea(
                  child: Column(
                children: [
                  Row(
                    children: [
                      CountDownTimer(
                        color: UIParameters.isDarkMode()
                            ? Theme.of(context).textTheme.bodyText1!.color
                            : Theme.of(context).primaryColor,
                        time: '',
                      ),
                      Obx((() => Text(
                            '${controller.time} Remaining',
                            style: countdownTimerTs(),
                          )))
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Expanded(
                    child: GridView.builder(
                        itemCount: controller.allQuestions.length,
                        shrinkWrap: true,
                        physics: const BouncingScrollPhysics(),
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: Get.width ~/ 75,
                            childAspectRatio: 1,
                            crossAxisSpacing: 8,
                            mainAxisSpacing: 8),
                        itemBuilder: ((_, index) {
                          AnswerStatus? _answerStatus;
                          if (controller.allQuestions[index].selectedAnswer !=
                              null) {
                            _answerStatus = AnswerStatus.answered;
                          }
                          return QuestionNumberCard(
                              index: index + 1,
                              status: _answerStatus,
                              onTap: (() => controller.jumpToQuestion(index)));
                        })),
                  ),
                ],
              )),
            ),
            ColoredBox(
              color: Theme.of(context).primaryColor,
              child: Padding(
                padding: UIParameters.mobileScreenPadding,
                child: MainButton(
                  onTap: (() {
                    controller.complete();
                  }),
                  title: 'Complete',
                ),
              ),
            )
          ],
        )));
  }
}
