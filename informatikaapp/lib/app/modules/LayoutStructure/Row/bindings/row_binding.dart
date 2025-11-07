import 'package:get/get.dart';

import '../controllers/row_controller.dart';

class RowBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RowController>(
      () => RowController(),
    );
  }
}
