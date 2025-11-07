import 'package:get/get.dart';

import '../controllers/tab_bar_view_controller.dart';

class TabBarViewBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TabBarViewController>(
      () => TabBarViewController(),
    );
  }
}
