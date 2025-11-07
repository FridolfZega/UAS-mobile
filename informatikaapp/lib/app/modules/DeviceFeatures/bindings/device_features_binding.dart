import 'package:get/get.dart';

import '../controllers/device_features_controller.dart';

class DeviceFeaturesBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DeviceFeaturesController>(
      () => DeviceFeaturesController(),
    );
  }
}
