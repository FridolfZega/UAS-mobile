import 'package:get/get.dart';

import '../controllers/column_controller.dart';

class ColumnBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ColumnController>(
      () => ColumnController(),
    );
  }
}
