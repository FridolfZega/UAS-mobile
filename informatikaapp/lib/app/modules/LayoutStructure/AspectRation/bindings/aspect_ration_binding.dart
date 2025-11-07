import 'package:get/get.dart';

import '../controllers/aspect_ration_controller.dart';

class AspectRationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AspectRationController>(
      () => AspectRationController(),
    );
  }
}
