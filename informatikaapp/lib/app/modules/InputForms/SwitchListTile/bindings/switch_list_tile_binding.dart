import 'package:get/get.dart';

import '../controllers/switch_list_tile_controller.dart';

class SwitchListTileBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SwitchListTileController>(
      () => SwitchListTileController(),
    );
  }
}
