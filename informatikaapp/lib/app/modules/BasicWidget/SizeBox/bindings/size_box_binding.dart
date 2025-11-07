import 'package:get/get.dart';

import '../controllers/size_box_controller.dart';

class SizeBoxBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SizeBoxController>(
      () => SizeBoxController(),
    );
  }
}
