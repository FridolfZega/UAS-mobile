import 'package:get/get.dart';

import '../controllers/builder_controller.dart';

class BuilderBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BuilderController>(
      () => BuilderController(),
    );
  }
}
