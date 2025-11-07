import 'package:get/get.dart';

import '../controllers/navigation_draw_controller.dart';

class NavigationDrawBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<NavigationDrawController>(
      () => NavigationDrawController(),
    );
  }
}
