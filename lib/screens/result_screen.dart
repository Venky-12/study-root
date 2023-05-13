import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:project_1/configs/themes/background_decoration.dart';
import 'package:project_1/configs/themes/custom_text_styles.dart';
import 'package:project_1/configs/themes/ui_parametres.dart';
import 'package:project_1/controllers/questions_controller_extension.dart';
import 'package:project_1/screens/question/answer_check_screen.dart';
import 'package:project_1/tools/content_area.dart';
import 'package:project_1/tools/custom_app_bar.dart';
import 'package:project_1/tools/main_button.dart';
import 'package:project_1/tools/questions/answer_card.dart';
import 'package:project_1/tools/questions/question_number_card.dart';
import '../controllers/question_papers/questions_controller.dart';

class ResultScreen extends GetView<QuestionsController> {
  const ResultScreen({super.key});
  static const String routeName = "/resultScreen";

  @override
  Widget build(BuildContext context) {
    Color _textColor =
        Get.isDarkMode ? Colors.white : Theme.of(context).primaryColor;
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: CustomAppBar(
          leading: const SizedBox(
            height: 80,
          ),
          title: controller.correctAnsweredQuestions,
          showActionIcon: false,
        ),
        body: BackgroundDecoration(
          child: Column(
            children: [
              Expanded(
                  child: ContentArea(
                child: Column(
                  children: [
                    SvgPicture.asset('images/bulb.svg'),
                    Padding(
                      padding: const EdgeInsets.only(top: 20, bottom: 5),
                      child: Text(
                        "Congratulations",
                        style: headerText.copyWith(color: _textColor),
                      ),
                    ),
                    Text(
                      'You have got ${controller.points} points',
                      style: TextStyle(color: _textColor),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    const Text(
                      "Tap below question numbers to view correct answers",
                      style: TextStyle(fontSize: 15),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    Expanded(
                        child: GridView.builder(
                            itemCount: controller.allQuestions.length,
                            shrinkWrap: true,
                            physics: const BouncingScrollPhysics(),
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: Get.width ~/ 75,
                                    childAspectRatio: 1,
                                    crossAxisSpacing: 8,
                                    mainAxisSpacing: 8),
                            itemBuilder: ((context, index) {
                              final _question = controller.allQuestions[index];
                              AnswerStatus _status = AnswerStatus.notanswered;
                              final _selectedAnswer = _question.selectedAnswer;
                              final _correctAnswer = _question.correctAnswer;
                              if (_selectedAnswer == _correctAnswer) {
                                _status = AnswerStatus.correct;
                              } else if (_question.selectedAnswer == null) {
                                _status = AnswerStatus.wrong;
                              } else {
                                _status = AnswerStatus.wrong;
                              }
                              return QuestionNumberCard(
                                  index: index + 1,
                                  status: _status,
                                  onTap: (() {
                                    controller.jumpToQuestion(index,
                                        isGoBack: false);
                                    Get.toNamed(AnswerCheckScreen.routeName);
                                  }));
                            })))
                  ],
                ),
              )),
              ColoredBox(
                color: Theme.of(context).scaffoldBackgroundColor,
                child: Padding(
                  padding: UIParameters.mobileScreenPadding,
                  child: Row(
                    children: [
                      Expanded(
                        child: MainButton(
                          onTap: (() {
                            controller.tryAgain();
                          }),
                          color: Colors.white,
                          title: "Try again",
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Expanded(
                        child: MainButton(
                          onTap: (() {
                            controller.saveTestResults();
                          }),
                          color: Colors.white,
                          title: "Go home",
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
