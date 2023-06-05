import 'package:get/get.dart';

import '../controllers/all_rooms_controller.dart';

class AllRoomsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AllRoomsController>(
      () => AllRoomsController(),
    );
  }
}
