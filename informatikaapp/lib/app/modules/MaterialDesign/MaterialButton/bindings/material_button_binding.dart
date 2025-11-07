import 'package:get/get.dart';

import '../controllers/material_button_controller.dart';

class MaterialButtonBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MaterialButtonController>(
      () => MaterialButtonController(),
    );
  }
}
