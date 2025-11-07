import 'package:get/get.dart';

import '../controllers/raw_chip_controller.dart';

class RawChipBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RawChipController>(
      () => RawChipController(),
    );
  }
}
