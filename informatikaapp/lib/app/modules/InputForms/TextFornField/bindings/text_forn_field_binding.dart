import 'package:get/get.dart';

import '../controllers/text_forn_field_controller.dart';

class TextFornFieldBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TextFornFieldController>(
      () => TextFornFieldController(),
    );
  }
}
