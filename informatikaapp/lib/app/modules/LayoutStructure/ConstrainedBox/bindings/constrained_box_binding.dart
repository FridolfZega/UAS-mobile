import 'package:get/get.dart';

import '../controllers/constrained_box_controller.dart';

class ConstrainedBoxBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ConstrainedBoxController>(
      () => ConstrainedBoxController(),
    );
  }
}
