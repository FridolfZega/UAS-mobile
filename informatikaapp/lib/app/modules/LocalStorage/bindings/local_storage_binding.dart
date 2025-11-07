import 'package:get/get.dart';

import '../controllers/local_storage_controller.dart';

class LocalStorageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LocalStorageController>(
      () => LocalStorageController(),
    );
  }
}
