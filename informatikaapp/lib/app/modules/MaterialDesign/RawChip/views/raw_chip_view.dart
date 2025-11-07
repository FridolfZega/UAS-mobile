import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/raw_chip_controller.dart';

class RawChipView extends GetView<RawChipController> {
  const RawChipView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('RawChipView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'RawChipView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
