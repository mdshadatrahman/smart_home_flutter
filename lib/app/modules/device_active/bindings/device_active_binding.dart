import 'package:get/get.dart';

import '../controllers/device_active_controller.dart';

class DeviceActiveBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DeviceActiveController>(
      () => DeviceActiveController(),
    );
  }
}
