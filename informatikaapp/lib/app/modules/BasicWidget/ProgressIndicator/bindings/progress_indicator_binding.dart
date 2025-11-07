import 'package:get/get.dart';

import '../controllers/progress_indicator_controller.dart';

class ProgressIndicatorBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ProgressIndicatorController>(
      () => ProgressIndicatorController(),
    );
  }
}
