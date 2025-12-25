import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/study_case_controller.dart';

class StudyCaseView extends GetView<StudyCaseController> {
  const StudyCaseView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Study Case Project 2'),
      ),
      body: Center(
        child: Obx(() => Text(
          'Count: ${controller.count.value}',
          style: const TextStyle(fontSize: 24),
        )),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: controller.increment,
        child: const Icon(Icons.add),
      ),
    );
  }
}
