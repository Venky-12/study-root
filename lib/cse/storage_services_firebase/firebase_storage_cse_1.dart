import 'package:get/get.dart';
import '../../firebase_ref/references.dart';

class FirebaseStorageCse1 extends GetxService {
  Future<String?> getImage(String? imgName) async {
    if (imgName == null) {
      return null;
    }
    try {
      var urlRef = firebaseStorage
          .child("cse_sem1")
          .child("${imgName.toLowerCase()}.png");
      var imgUrl = await urlRef.getDownloadURL();
      // print(imgUrl);
      return imgUrl;
    } catch (e) {
      print(e);
      return null;
    }
  }
}
