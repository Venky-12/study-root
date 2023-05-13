import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import '../../../firebase_ref/references.dart';
import '../../../services/question_paper_model.dart';
import '../screens/eee6_question_screen.dart';

class Eee6QPC extends GetxController {
  final allPaperImages = <String>[].obs;
  final allPapers = <QuestionPaperModel>[].obs;

  @override
  void onReady() {
    getAllPapers();
    super.onReady();
  }

  Future<void> getAllPapers() async {
    try {
      QuerySnapshot<Map<String, dynamic>> data = await eeeSemVIqpRF.get();
      final paperList = data.docs
          .map((paper) => QuestionPaperModel.fromSnapshot(paper))
          .toList();
      allPapers.assignAll(paperList);

      allPapers.assignAll(paperList);
    } catch (e) {
      print(e);
    }
  }

  void navigateToQuestions({required QuestionPaperModel paper}) {
    Get.toNamed(Eee6QuestionsScreen.routeName, arguments: paper);
  }
}
