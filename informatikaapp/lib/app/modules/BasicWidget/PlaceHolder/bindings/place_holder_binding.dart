import 'package:get/get.dart';

import '../controllers/place_holder_controller.dart';

class PlaceHolderBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PlaceHolderController>(
      () => PlaceHolderController(),
    );
  }
}
