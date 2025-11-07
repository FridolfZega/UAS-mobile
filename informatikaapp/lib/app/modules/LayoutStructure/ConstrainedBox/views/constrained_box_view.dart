import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/constrained_box_controller.dart';

class ConstrainedBoxView extends GetView<ConstrainedBoxController> {
  const ConstrainedBoxView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ConstrainedBoxView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'ConstrainedBoxView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
