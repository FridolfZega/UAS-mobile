import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/floating_action_button_controller.dart';

class FloatingActionButtonView extends GetView<FloatingActionButtonController> {
  const FloatingActionButtonView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FloatingActionButtonView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'FloatingActionButtonView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
