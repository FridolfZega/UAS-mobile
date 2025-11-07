import 'package:get/get.dart';

import '../controllers/base_line_controller.dart';

class BaseLineBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BaseLineController>(
      () => BaseLineController(),
    );
  }
}
