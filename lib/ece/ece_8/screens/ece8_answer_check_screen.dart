import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_1/configs/themes/background_decoration.dart';
import 'package:project_1/configs/themes/custom_text_styles.dart';
import 'package:project_1/ece/ece_8/controllers/ece8_questions_controller.dart';
import 'package:project_1/ece/ece_8/tools/ece8_custom_appbar.dart';
import 'package:project_1/tools/content_area.dart';
import 'package:project_1/tools/questions/answer_card.dart';

class Ece8AnswerCheckScreen extends GetView<Ece8QuestionsController> {
  const Ece8AnswerCheckScreen({super.key});
  static String routeName = "/ece8answercheckscreen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: Ece8CustomAppBar(
          titleWidget: Obx((() => Text(
                'Q. ${(controller.questionIndex.value + 1).toString().padLeft(2, "0")}',
                style: appBarTs,
              ))),
          showActionIcon: false,
        ),
        body: BackgroundDecoration(
          child: Obx(
            () => Column(
              children: [
                Expanded(
                  child: ContentArea(
                      child: SingleChildScrollView(
                    padding: const EdgeInsets.only(top: 20),
                    child: Column(
                      children: [
                        Text(controller.currentQuestion.value!.question),
                        GetBuilder<Ece8QuestionsController>(
                            id: 'answer_review_list',
                            builder: (_) {
                              return ListView.separated(
                                  shrinkWrap: true,
                                  physics: const NeverScrollableScrollPhysics(),
                                  itemBuilder: (_, index) {
                                    final answer = controller
                                        .currentQuestion.value!.answers[index];
                                    final selectedAnswer = controller
                                        .currentQuestion.value!.selectedAnswer;
                                    final correctAnswer = controller
                                        .currentQuestion.value!.correctAnswer;
                                    final String answerText =
                                        "${answer.identifier}. ${answer.answer}";
                                    if (correctAnswer == selectedAnswer &&
                                        answer.identifier == selectedAnswer) {
                                      //correct answer
                                      return CorrectAnswer(answer: answerText);
                                    } else if (selectedAnswer == null) {
                                      //not selected answer
                                      return NotAnswered(answer: answerText);
                                    } else if (correctAnswer !=
                                            selectedAnswer &&
                                        answer.identifier == selectedAnswer) {
                                      //wrong answer
                                      return WrongAnswer(answer: answerText);
                                    } else if (correctAnswer ==
                                        answer.identifier) {
                                      //correct answer
                                      return CorrectAnswer(answer: answerText);
                                    }
                                    return AnswerCard(
                                      answer: answerText,
                                      onTap: (() {}),
                                      isSelected: false,
                                    );
                                  },
                                  separatorBuilder: (_, index) {
                                    return const SizedBox(
                                      height: 10,
                                    );
                                  },
                                  itemCount: controller
                                      .currentQuestion.value!.answers.length);
                            })
                      ],
                    ),
                  )),
                )
              ],
            ),
          ),
        ));
  }
}
