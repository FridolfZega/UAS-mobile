import 'package:get/get.dart';
import '../controllers/study_case_controller.dart';

class StudyCaseBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<StudyCaseController>(
      () => StudyCaseController(),
    );
  }
}
