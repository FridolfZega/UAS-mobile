import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/center_controller.dart';

class CenterView extends GetView<CenterController> {
  const CenterView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CenterView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'CenterView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
