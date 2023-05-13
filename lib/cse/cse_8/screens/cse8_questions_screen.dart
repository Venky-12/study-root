import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_1/configs/themes/background_decoration.dart';
import 'package:project_1/configs/themes/custom_text_styles.dart';
import 'package:project_1/configs/themes/ui_parametres.dart';
import 'package:project_1/controllers/question_papers/count_down_timer.dart';
import 'package:project_1/cse/cse_7/controller/cse_7_questions_controller.dart';
import 'package:project_1/cse/cse_7/screens/cse_7_test_overview_screen.dart';
import 'package:project_1/cse/cse_7/tools/cse_7_custom_appbar.dart';
import 'package:project_1/cse/cse_8/controller/cse_8_questions_controller.dart';
import 'package:project_1/cse/cse_8/screens/cse_8_test_overview_screen.dart';
import 'package:project_1/cse/cse_8/tools/cse_8_custom_appbar.dart';
import 'package:project_1/firebase_ref/loading_status.dart';
import 'package:project_1/tools/content_area.dart';
import 'package:project_1/tools/question_place_holder.dart';
import 'package:project_1/tools/questions/answer_card.dart';
import '../../../configs/themes/app_colors.dart';
import '../../../tools/main_button.dart';

class Cse8QuestionsScreen extends GetView<Cse8QuestionsController> {
  const Cse8QuestionsScreen({super.key});
  static const String routeName = "/cse8questionsscreen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: Cse8CustomAppBar(
        leading: Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 7,
          ),
          decoration: const ShapeDecoration(
            shape: StadiumBorder(
                side: BorderSide(color: onSurfaceTextColor, width: 2)),
          ),
          child: Obx((() => CountDownTimer(
                time: controller.time.value,
                color: onSurfaceTextColor,
              ))),
        ),
        titleWidget: Obx(
          (() => Text(
                'Q. ${(controller.questionIndex.value + 1).toString().padLeft(2, '0')}',
                style: appBarTs,
              )),
        ),
      ),
      body: BackgroundDecoration(
          child: Obx(() => Column(
                children: [
                  if (controller.loadingStatus.value == LoadingStatus.loading)
                    const Expanded(
                        child: ContentArea(child: QuestionScreenHolder())),
                  if (controller.loadingStatus.value == LoadingStatus.completed)
                    Expanded(
                      child: ContentArea(
                        child: SingleChildScrollView(
                          padding: const EdgeInsets.only(top: 10),
                          child: Column(
                            children: [
                              Text(
                                controller.currentQuestion.value!.question,
                                style: questionTS,
                              ),
                              GetBuilder<Cse8QuestionsController>(
                                  id: 'answers_list',
                                  builder: ((context) {
                                    return ListView.separated(
                                        shrinkWrap: true,
                                        padding: const EdgeInsets.only(top: 25),
                                        physics:
                                            const NeverScrollableScrollPhysics(),
                                        itemBuilder: ((context, index) {
                                          final answer = controller
                                              .currentQuestion
                                              .value!
                                              .answers[index];
                                          return AnswerCard(
                                            answer:
                                                '${answer.identifier}. ${answer.answer}',
                                            onTap: () {
                                              controller.selectedAnswer(
                                                  answer.identifier);
                                            },
                                            isSelected: answer.identifier ==
                                                controller.currentQuestion
                                                    .value!.selectedAnswer,
                                          );
                                        }),
                                        separatorBuilder:
                                            (BuildContext context, int index) =>
                                                const SizedBox(
                                                  height: 10,
                                                ),
                                        itemCount: controller.currentQuestion
                                            .value!.answers.length);
                                  })),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ColoredBox(
                    color: Theme.of(context).primaryColor,
                    child: Padding(
                      padding: UIParameters.mobileScreenPadding,
                      child: Row(
                        children: [
                          Visibility(
                            visible: controller.isFirstQuestion,
                            child: SizedBox(
                              width: 50,
                              height: 50,
                              child: MainButton(
                                onTap: () {
                                  controller.prevQuestion();
                                },
                                child: Icon(
                                  Icons.arrow_back_ios_new,
                                  color: Get.isDarkMode
                                      ? onSurfaceTextColor
                                      : Theme.of(context).primaryColor,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: Visibility(
                                visible: controller.loadingStatus.value ==
                                    LoadingStatus.completed,
                                child: MainButton(
                                  onTap: (() {
                                    controller.isLastQuestion
                                        ? Get.toNamed(
                                            Cse8TestOverviewScreen.routeName)
                                        : controller.nextQuestion();
                                  }),
                                  title: controller.isLastQuestion
                                      ? 'Complete'
                                      : 'Next',
                                )),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ))),
    );
  }
}
