import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/flexible_controller.dart';

class FlexibleView extends GetView<FlexibleController> {
  const FlexibleView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FlexibleView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'FlexibleView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
