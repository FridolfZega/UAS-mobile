import 'package:get/get.dart';

class StudyCaseController extends GetxController {
  // contoh state
  final count = 0.obs;

  void increment() {
    count.value++;
  }
}
