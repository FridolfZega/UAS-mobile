import 'package:get/get.dart';

import '../controllers/nested_scroll_view_controller.dart';

class NestedScrollViewBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<NestedScrollViewController>(
      () => NestedScrollViewController(),
    );
  }
}
