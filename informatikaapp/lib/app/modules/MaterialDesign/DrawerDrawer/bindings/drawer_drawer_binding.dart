import 'package:get/get.dart';

import '../controllers/drawer_drawer_controller.dart';

class DrawerDrawerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DrawerDrawerController>(
      () => DrawerDrawerController(),
    );
  }
}
