import 'package:get/get.dart';

import '../controllers/network_image_controller.dart';

class NetworkImageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<NetworkImageController>(
      () => NetworkImageController(),
    );
  }
}
