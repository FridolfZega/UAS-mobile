import 'package:get/get.dart';

import '../controllers/center_controller.dart';

class CenterBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CenterController>(
      () => CenterController(),
    );
  }
}
