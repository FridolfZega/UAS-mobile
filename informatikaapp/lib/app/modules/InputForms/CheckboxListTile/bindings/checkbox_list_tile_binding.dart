import 'package:get/get.dart';

import '../controllers/checkbox_list_tile_controller.dart';

class CheckboxListTileBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CheckboxListTileController>(
      () => CheckboxListTileController(),
    );
  }
}
