import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/switch_controller.dart';

class SwitchView extends GetView<SwitchController> {
  const SwitchView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SwitchView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'SwitchView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
