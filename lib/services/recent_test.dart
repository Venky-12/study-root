import 'package:cloud_firestore/cloud_firestore.dart';

class Recent_Test {
  final String id;
  final String correctAnswer;
  final String points;
  final String questionPaperId;
  final int time;

  Recent_Test(
      {required this.id,
      required this.correctAnswer,
      required this.points,
      required this.questionPaperId,
      required this.time});

  Recent_Test.fromSnapshot(QueryDocumentSnapshot<Map<String, dynamic>> snapshot)
      : id = snapshot.id,
        correctAnswer = snapshot['correct_answer'],
        points = snapshot['points'],
        questionPaperId = snapshot['question_id'],
        time = snapshot['time'] as int;
}
