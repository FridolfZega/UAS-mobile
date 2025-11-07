import 'package:get/get.dart';

import '../controllers/rich_text_controller.dart';

class RichTextBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RichTextController>(
      () => RichTextController(),
    );
  }
}
