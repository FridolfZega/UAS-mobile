import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/spacer_controller.dart';

class SpacerView extends GetView<SpacerController> {
  const SpacerView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SpacerView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'SpacerView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
