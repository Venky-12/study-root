// ignore_for_file: non_constant_identifier_names

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';

final fireStore = FirebaseFirestore.instance;
final questionPaperRF = fireStore.collection('questionPapers');
final cseSemIqpRF = fireStore.collection("cseSemIqp");
final cseSemIIqpRF = fireStore.collection("cseSemIIqp");
final cseSemIIIqpRF = fireStore.collection("cseSemIIIqp");
final cseSemIVqpRF = fireStore.collection("cseSemIVqp");
final cseSemVqpRF = fireStore.collection("cseSemVqp");
final cseSemVIqpRF = fireStore.collection("cseSemVIqp");
final cseSemVIIqpRF = fireStore.collection("cseSemVIIqp");
final cseSemVIIIqpRF = fireStore.collection("cseSemVIIIqp");
final eceSemIqpRF = fireStore.collection("eceSemIqp");
final eceSemIIqpRF = fireStore.collection("eceSemIIqp");
final eceSemIIIqpRF = fireStore.collection("eceSemIIIqp");
final eceSemIVqpRF = fireStore.collection("eceSemIVqp");
final eceSemVqpRF = fireStore.collection("eceSemVqp");
final eceSemVIqpRF = fireStore.collection("eceSemVIqp");
final eceSemVIIqpRF = fireStore.collection("eceSemVIIqp");
final eceSemVIIIqpRF = fireStore.collection("eceSemVIIIqp");
final eeeSemIqpRF = fireStore.collection("eeeSemIqp");
final eeeSemIIqpRF = fireStore.collection("eeeSemIIqp");
final eeeSemIIIqpRF = fireStore.collection("eeeSemIIIqp");
final eeeSemIVqpRF = fireStore.collection("eeeSemIVqp");
final eeeSemVqpRF = fireStore.collection("eeeSemVqp");
final eeeSemVIqpRF = fireStore.collection("eeeSemVIqp");
final eeeSemVIIqpRF = fireStore.collection("eeeSemVIIqp");
final eeeSemVIIIqpRF = fireStore.collection("eeeSemVIIIqp");
final itSemIqpRF = fireStore.collection("itSemIqp");
final itSemIIqpRF = fireStore.collection("itSemIIqp");
final itSemIIIqpRF = fireStore.collection("itSemIIIqp");
final itSemIVqpRF = fireStore.collection("itSemIVqp");
final itSemVqpRF = fireStore.collection("itSemVqp");
final itSemVIqpRF = fireStore.collection("itSemVIqp");
final itSemVIIqpRF = fireStore.collection("itSemVIIqp");
final itSemVIIIqpRF = fireStore.collection("itSemVIIIqp");
final userRF = fireStore.collection('users');
DocumentReference questionRF({
  required String paperId,
  required String questionId,
}) =>
    questionPaperRF.doc(paperId).collection("questions").doc(questionId);

DocumentReference CseSemIRef({
  required String paperId,
  required String questionId,
}) =>
    cseSemIqpRF.doc(paperId).collection("cseSem1Questions").doc(questionId);

DocumentReference CseSemIIRef({
  required String paperId,
  required String questionId,
}) =>
    cseSemIIqpRF.doc(paperId).collection("cseSem2Questions").doc(questionId);

DocumentReference CseSemIIIRef({
  required String paperId,
  required String questionId,
}) =>
    cseSemIIIqpRF.doc(paperId).collection("cseSem3Questions").doc(questionId);

DocumentReference CseSemIVRef({
  required String paperId,
  required String questionId,
}) =>
    cseSemIVqpRF.doc(paperId).collection("cseSem4Questions").doc(questionId);

DocumentReference CseSemVRef({
  required String paperId,
  required String questionId,
}) =>
    cseSemVqpRF.doc(paperId).collection("cseSem5Questions").doc(questionId);

DocumentReference CseSemVIRef({
  required String paperId,
  required String questionId,
}) =>
    cseSemVIqpRF.doc(paperId).collection("cseSem6Questions").doc(questionId);

DocumentReference CseSemVIIRef({
  required String paperId,
  required String questionId,
}) =>
    cseSemVIIqpRF.doc(paperId).collection("cseSem7Questions").doc(questionId);

DocumentReference CseSemVIIIRef({
  required String paperId,
  required String questionId,
}) =>
    cseSemVIIIqpRF.doc(paperId).collection("cseSem8Questions").doc(questionId);

DocumentReference EceSemIRef({
  required String paperId,
  required String questionId,
}) =>
    eceSemIqpRF.doc(paperId).collection("eceSem1Questions").doc(questionId);

DocumentReference EceSemIIRef({
  required String paperId,
  required String questionId,
}) =>
    eceSemIIqpRF.doc(paperId).collection("eceSem2Questions").doc(questionId);

DocumentReference EceSemIIIRef({
  required String paperId,
  required String questionId,
}) =>
    eceSemIIIqpRF.doc(paperId).collection("eceSem3Questions").doc(questionId);

DocumentReference EceSemIVRef({
  required String paperId,
  required String questionId,
}) =>
    eceSemIVqpRF.doc(paperId).collection("eceSem4Questions").doc(questionId);

DocumentReference EceSemVRef({
  required String paperId,
  required String questionId,
}) =>
    eceSemVqpRF.doc(paperId).collection("eceSem5Questions").doc(questionId);

DocumentReference EceSemVIRef({
  required String paperId,
  required String questionId,
}) =>
    eceSemVIqpRF.doc(paperId).collection("eceSem6Questions").doc(questionId);

DocumentReference EceSemVIIRef({
  required String paperId,
  required String questionId,
}) =>
    eceSemVIIqpRF.doc(paperId).collection("eceSem7Questions").doc(questionId);

DocumentReference EceSemVIIIRef({
  required String paperId,
  required String questionId,
}) =>
    eceSemVIIIqpRF.doc(paperId).collection("eceSem8Questions").doc(questionId);

DocumentReference EeeSemIRef({
  required String paperId,
  required String questionId,
}) =>
    eeeSemIqpRF.doc(paperId).collection("eeeSem1Questions").doc(questionId);

DocumentReference EeeSemIIRef({
  required String paperId,
  required String questionId,
}) =>
    eeeSemIIqpRF.doc(paperId).collection("eeeSem2Questions").doc(questionId);
DocumentReference EeeSemIIIRef({
  required String paperId,
  required String questionId,
}) =>
    eeeSemIIIqpRF.doc(paperId).collection("eeeSem3Questions").doc(questionId);
DocumentReference EeeSemIVRef({
  required String paperId,
  required String questionId,
}) =>
    eeeSemIVqpRF.doc(paperId).collection("eeeSem4Questions").doc(questionId);
DocumentReference EeeSemVRef({
  required String paperId,
  required String questionId,
}) =>
    eeeSemVqpRF.doc(paperId).collection("eeeSem5Questions").doc(questionId);
DocumentReference EeeSemVIRef({
  required String paperId,
  required String questionId,
}) =>
    eeeSemVIqpRF.doc(paperId).collection("eeeSem6Questions").doc(questionId);
DocumentReference EeeSemVIIRef({
  required String paperId,
  required String questionId,
}) =>
    eeeSemVIIqpRF.doc(paperId).collection("eeeSem7Questions").doc(questionId);
DocumentReference EeeSemVIIIRef({
  required String paperId,
  required String questionId,
}) =>
    eeeSemVIIIqpRF.doc(paperId).collection("eeeSem8Questions").doc(questionId);

DocumentReference itSemIRef({
  required String paperId,
  required String questionId,
}) =>
    itSemIqpRF.doc(paperId).collection("itSem1Questions").doc(questionId);

DocumentReference itSemIIRef({
  required String paperId,
  required String questionId,
}) =>
    itSemIIqpRF.doc(paperId).collection("itSem2Questions").doc(questionId);

DocumentReference itSemIIIRef({
  required String paperId,
  required String questionId,
}) =>
    itSemIIIqpRF.doc(paperId).collection("itSem3Questions").doc(questionId);

DocumentReference itSemIVRef({
  required String paperId,
  required String questionId,
}) =>
    itSemIVqpRF.doc(paperId).collection("itSem4Questions").doc(questionId);

DocumentReference itSemVRef({
  required String paperId,
  required String questionId,
}) =>
    itSemVqpRF.doc(paperId).collection("itSem5Questions").doc(questionId);

DocumentReference itSemVIRef({
  required String paperId,
  required String questionId,
}) =>
    itSemVIqpRF.doc(paperId).collection("itSem6Questions").doc(questionId);

DocumentReference itSemVIIRef({
  required String paperId,
  required String questionId,
}) =>
    itSemVIIqpRF.doc(paperId).collection("itSem7Questions").doc(questionId);

DocumentReference itSemVIIIRef({
  required String paperId,
  required String questionId,
}) =>
    itSemVIIIqpRF.doc(paperId).collection("itSem8Questions").doc(questionId);

Reference get firebaseStorage => FirebaseStorage.instance.ref();
