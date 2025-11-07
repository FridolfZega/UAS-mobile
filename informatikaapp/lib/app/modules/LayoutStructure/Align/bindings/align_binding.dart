import 'package:get/get.dart';

import '../controllers/align_controller.dart';

class AlignBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AlignController>(
      () => AlignController(),
    );
  }
}
