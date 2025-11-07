import 'package:get/get.dart';

import '../controllers/api_integration_controller.dart';

class ApiIntegrationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ApiIntegrationController>(
      () => ApiIntegrationController(),
    );
  }
}
