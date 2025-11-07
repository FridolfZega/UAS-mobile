import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/progress_indicator_controller.dart';

class ProgressIndicatorView extends GetView<ProgressIndicatorController> {
  const ProgressIndicatorView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ProgressIndicatorView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'ProgressIndicatorView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
