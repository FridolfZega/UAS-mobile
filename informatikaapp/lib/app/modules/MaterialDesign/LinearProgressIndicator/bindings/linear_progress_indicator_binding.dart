import 'package:get/get.dart';

import '../controllers/linear_progress_indicator_controller.dart';

class LinearProgressIndicatorBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LinearProgressIndicatorController>(
      () => LinearProgressIndicatorController(),
    );
  }
}
