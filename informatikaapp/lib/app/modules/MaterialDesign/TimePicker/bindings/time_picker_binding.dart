import 'package:get/get.dart';

import '../controllers/time_picker_controller.dart';

class TimePickerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TimePickerController>(
      () => TimePickerController(),
    );
  }
}
