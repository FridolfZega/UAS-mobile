import 'package:get/get.dart';

import '../controllers/safe_area_controller.dart';

class SafeAreaBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SafeAreaController>(
      () => SafeAreaController(),
    );
  }
}
