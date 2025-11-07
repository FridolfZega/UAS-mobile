import 'package:get/get.dart';

import '../controllers/material_app_controller.dart';

class MaterialAppBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MaterialAppController>(
      () => MaterialAppController(),
    );
  }
}
