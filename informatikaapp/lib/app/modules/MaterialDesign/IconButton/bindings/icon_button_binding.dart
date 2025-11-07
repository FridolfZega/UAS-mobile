import 'package:get/get.dart';

import '../controllers/icon_button_controller.dart';

class IconButtonBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<IconButtonController>(
      () => IconButtonController(),
    );
  }
}
