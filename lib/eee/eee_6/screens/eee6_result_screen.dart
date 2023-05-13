// ignore_for_file: no_leading_underscores_for_local_identifiers
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:project_1/configs/themes/background_decoration.dart';
import 'package:project_1/configs/themes/custom_text_styles.dart';
import 'package:project_1/eee/eee_6/controllers/eee6_questions_controller_extension.dart';
import 'package:project_1/eee/eee_6/screens/eee6_answer_check_screen.dart';
import 'package:project_1/eee/eee_6/tools/eee6_custom_appbar.dart';
import 'package:project_1/tools/content_area.dart';
import 'package:project_1/tools/questions/answer_card.dart';
import '../../../configs/themes/ui_parametres.dart';
import '../../../tools/main_button.dart';
import '../../../tools/questions/question_number_card.dart';
import '../controllers/eee6_questions_controller.dart';

class Eee6ResultScreen extends GetView<Eee6QuestionsController> {
  const Eee6ResultScreen({super.key});
  static const String routeName = "/eee6resultscreen";

  @override
  Widget build(BuildContext context) {
    Color _textColor =
        Get.isDarkMode ? Colors.white : Theme.of(context).primaryColor;
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: Eee6CustomAppBar(
          leading: const SizedBox(
            height: 18,
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
                        'Congratulations',
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
                      'Tap below question numbers to view correct answers',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 17),
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
                                    Get.toNamed(
                                        Eee6AnswerCheckScreen.routeName);
                                  }));
                            })))
                  ],
                ),
              )),
              ColoredBox(
                  color: Theme.of(context).primaryColor,
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
                          width: 15,
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
                  ))
            ],
          ),
        ));
  }
}
