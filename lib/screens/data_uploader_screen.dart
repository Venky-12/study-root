import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_1/services/data_uploader.dart';
import 'package:project_1/firebase_ref/loading_status.dart';

// ignore: must_be_immutable
class DataUploaderScreen extends StatelessWidget {
  DataUploaderScreen({Key? key}) : super(key: key);
  DataUploader controller = Get.put(DataUploader());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Obx(
          () => Text(controller.loadingStatus.value == LoadingStatus.completed
              ? "uploading completed"
              : "uploading..."),
        ),
      ),
    );
  }
}
