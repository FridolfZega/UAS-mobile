import 'package:get/get.dart';

import '../controllers/material_design_controller.dart';

class MaterialDesignBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MaterialDesignController>(
      () => MaterialDesignController(),
    );
  }
}
