import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/builder_controller.dart';

class BuilderView extends GetView<BuilderController> {
  const BuilderView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BuilderView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'BuilderView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
