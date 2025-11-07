import 'package:get/get.dart';

import '../controllers/padding_controller.dart';

class PaddingBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PaddingController>(
      () => PaddingController(),
    );
  }
}
