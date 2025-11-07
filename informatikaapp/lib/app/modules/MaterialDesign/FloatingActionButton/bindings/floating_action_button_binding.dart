import 'package:get/get.dart';

import '../controllers/floating_action_button_controller.dart';

class FloatingActionButtonBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<FloatingActionButtonController>(
      () => FloatingActionButtonController(),
    );
  }
}
