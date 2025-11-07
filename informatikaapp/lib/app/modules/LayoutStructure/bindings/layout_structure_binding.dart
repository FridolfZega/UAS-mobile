import 'package:get/get.dart';

import '../controllers/layout_structure_controller.dart';

class LayoutStructureBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LayoutStructureController>(
      () => LayoutStructureController(),
    );
  }
}
