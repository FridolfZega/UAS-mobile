import 'package:get/get.dart';

import '../controllers/input_forms_controller.dart';

class InputFormsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<InputFormsController>(
      () => InputFormsController(),
    );
  }
}
