import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/stack_controller.dart';

class StackView extends GetView<StackController> {
  const StackView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('StackView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'StackView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
