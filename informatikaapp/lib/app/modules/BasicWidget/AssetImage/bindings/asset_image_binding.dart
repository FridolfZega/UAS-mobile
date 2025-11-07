import 'package:get/get.dart';

import '../controllers/asset_image_controller.dart';

class AssetImageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AssetImageController>(
      () => AssetImageController(),
    );
  }
}
