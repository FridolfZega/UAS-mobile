import 'package:get/get.dart';

import '../controllers/radio_list_tile_controller.dart';

class RadioListTileBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RadioListTileController>(
      () => RadioListTileController(),
    );
  }
}
