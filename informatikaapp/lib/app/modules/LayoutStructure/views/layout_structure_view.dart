import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/layout_structure_controller.dart';

class LayoutStructureView extends GetView<LayoutStructureController> {
  const LayoutStructureView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('LayoutStructureView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'LayoutStructureView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
