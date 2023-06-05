import 'package:get/get.dart';
import 'package:smart_home/app/routes/app_pages.dart';

class SplashController extends GetxController {
  void goNextPage() {
    Get.offAndToNamed(Routes.HOME);
  }
}
