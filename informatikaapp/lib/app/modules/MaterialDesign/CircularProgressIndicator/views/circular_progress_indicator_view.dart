import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/circular_progress_indicator_controller.dart';

class CircularProgressIndicatorView
    extends GetView<CircularProgressIndicatorController> {
  const CircularProgressIndicatorView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CircularProgressIndicatorView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'CircularProgressIndicatorView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
