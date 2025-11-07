import 'package:get/get.dart';

import '../controllers/divider_controller.dart';

class DividerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DividerController>(
      () => DividerController(),
    );
  }
}
