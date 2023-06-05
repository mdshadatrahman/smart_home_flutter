import 'package:get/get.dart';

import '../controllers/smart_mode_controller.dart';

class SmartModeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SmartModeController>(
      () => SmartModeController(),
    );
  }
}
