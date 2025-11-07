import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/material_design_controller.dart';

class MaterialDesignView extends GetView<MaterialDesignController> {
  const MaterialDesignView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MaterialDesignView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'MaterialDesignView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
