import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/chip_controller.dart';

class ChipView extends GetView<ChipController> {
  const ChipView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ChipView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'ChipView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
