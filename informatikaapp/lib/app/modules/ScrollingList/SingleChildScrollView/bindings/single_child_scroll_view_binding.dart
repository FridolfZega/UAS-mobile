import 'package:get/get.dart';

import '../controllers/single_child_scroll_view_controller.dart';

class SingleChildScrollViewBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SingleChildScrollViewController>(
      () => SingleChildScrollViewController(),
    );
  }
}
