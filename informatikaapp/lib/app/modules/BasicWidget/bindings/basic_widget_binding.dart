import 'package:get/get.dart';

import '../controllers/basic_widget_controller.dart';

class BasicWidgetBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BasicWidgetController>(
      () => BasicWidgetController(),
    );
  }
}
