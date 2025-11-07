import 'package:get/get.dart';

import '../controllers/scaffold_controller.dart';

class ScaffoldBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ScaffoldController>(
      () => ScaffoldController(),
    );
  }
}
