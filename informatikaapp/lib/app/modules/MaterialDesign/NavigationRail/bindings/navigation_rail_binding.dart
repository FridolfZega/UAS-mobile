import 'package:get/get.dart';

import '../controllers/navigation_rail_controller.dart';

class NavigationRailBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<NavigationRailController>(
      () => NavigationRailController(),
    );
  }
}
