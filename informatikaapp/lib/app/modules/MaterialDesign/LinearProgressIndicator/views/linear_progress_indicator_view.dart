import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/linear_progress_indicator_controller.dart';

class LinearProgressIndicatorView
    extends GetView<LinearProgressIndicatorController> {
  const LinearProgressIndicatorView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('LinearProgressIndicatorView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'LinearProgressIndicatorView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
