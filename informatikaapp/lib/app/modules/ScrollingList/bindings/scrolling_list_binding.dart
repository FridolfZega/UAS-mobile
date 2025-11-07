import 'package:get/get.dart';

import '../controllers/scrolling_list_controller.dart';

class ScrollingListBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ScrollingListController>(
      () => ScrollingListController(),
    );
  }
}
