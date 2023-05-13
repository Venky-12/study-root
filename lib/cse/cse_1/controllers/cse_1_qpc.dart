import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:project_1/cse/cse_1/screens/cse1_questions_screen.dart';
import 'package:project_1/cse/storage_services_firebase/firebase_storage_cse_1.dart';
import '../../../firebase_ref/references.dart';
import '../../../services/question_paper_model.dart';

class CSE1QPC extends GetxController {
  final allPaperImages = <String>[].obs;
  final allPapers = <QuestionPaperModel>[].obs;

  @override
  void onReady() {
    getAllPapers();
    super.onReady();
  }

  Future<void> getAllPapers() async {
    List<String> imgName = ["chemistry", "maths", "psp"];
    try {
      QuerySnapshot<Map<String, dynamic>> data = await cseSemIqpRF.get();
      final paperList = data.docs
          .map((paper) => QuestionPaperModel.fromSnapshot(paper))
          .toList();
      allPapers.assignAll(paperList);

      for (var paper in paperList) {
        final imgUrl =
            await Get.find<FirebaseStorageCse1>().getImage(paper.title);
        paper.imageUrl = imgUrl;
      }
      allPapers.assignAll(paperList);
    } catch (e) {
      print(e);
    }
  }

  void navigateToQuestions({required QuestionPaperModel paper}) {
    Get.toNamed(Cse1QuestionsScreen.routeName, arguments: paper);
  }
}
