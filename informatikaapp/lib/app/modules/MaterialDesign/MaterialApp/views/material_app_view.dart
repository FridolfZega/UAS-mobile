import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/material_app_controller.dart';

class MaterialAppView extends GetView<MaterialAppController> {
  const MaterialAppView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MaterialAppView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'MaterialAppView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
