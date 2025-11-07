import 'package:get/get.dart';

import '../controllers/button_sheet_controller.dart';

class ButtonSheetBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ButtonSheetController>(
      () => ButtonSheetController(),
    );
  }
}
