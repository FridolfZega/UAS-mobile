import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/study_case_controller.dart';

class StudyCaseView extends GetView<StudyCaseController> {
  const StudyCaseView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('StudyCaseView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'StudyCaseView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
