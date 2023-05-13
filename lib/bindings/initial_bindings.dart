import 'package:get/get.dart';
import 'package:project_1/controllers/screen_controller.dart';
import 'package:project_1/controllers/theme_controller.dart';
import 'package:project_1/cse/storage_services_firebase/firebase_storage_cse_1.dart';

import 'package:project_1/services/firebase_storage_service.dart';

class InitialBindings implements Bindings {
  @override
  void dependencies() {
    Get.put(ThemeController());
    Get.put(AuthController(), permanent: true);
    Get.lazyPut(() => FirebaseStorageService());
    Get.lazyPut(() => FirebaseStorageCse1());
  }
}
