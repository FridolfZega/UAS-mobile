import 'package:get/get.dart';

import '../controllers/lis_tile_controller.dart';

class LisTileBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LisTileController>(
      () => LisTileController(),
    );
  }
}
