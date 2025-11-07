import 'package:get/get.dart';

import '../controllers/custom_scroll_view_controller.dart';

class CustomScrollViewBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CustomScrollViewController>(
      () => CustomScrollViewController(),
    );
  }
}
