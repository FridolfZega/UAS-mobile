import 'package:get/get.dart';

import '../controllers/circular_progress_indicator_controller.dart';

class CircularProgressIndicatorBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CircularProgressIndicatorController>(
      () => CircularProgressIndicatorController(),
    );
  }
}
