import 'package:firebase_auth/firebase_auth.dart';
import 'package:project_1/It/it_4/controllers/it4_questions_controller.dart';
import '../../../firebase_ref/references.dart';

extension It4QuestionsControllerExtenstion on It4QuestionsController {
  int get correctQuestionCount => allQuestions
      .where((element) => element.selectedAnswer == element.correctAnswer)
      .toList()
      .length;

  String get correctAnsweredQuestions {
    return '$correctQuestionCount out of ${allQuestions.length} are correct ';
  }

  String get points {
    var points = (correctQuestionCount / allQuestions.length) *
        100 *
        (questionPaperModel.timeSeconds - remainSeconds) /
        questionPaperModel.timeSeconds *
        100;
    return points.toStringAsFixed(2);
  }

  Future<void> saveTestResults() async {
    var batch = fireStore.batch();
    User? _user = FirebaseAuth.instance.currentUser!;
    if (_user == null) {
      return;
    }
    batch.set(
        userRF
            .doc(_user.email)
            .collection('my_recent_tests')
            .doc(questionPaperModel.id),
        {
          "points": points,
          "correct_answer": '$correctQuestionCount/${allQuestions.length}',
          "question_id": questionPaperModel.id,
          "time": questionPaperModel.timeSeconds - remainSeconds
        });
    batch.commit();
    navigateToHome();
  }
}