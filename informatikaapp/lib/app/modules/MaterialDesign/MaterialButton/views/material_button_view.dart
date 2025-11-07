import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/material_button_controller.dart';

class MaterialButtonView extends GetView<MaterialButtonController> {
  const MaterialButtonView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MaterialButtonView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'MaterialButtonView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
