import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/scaffold_controller.dart';

class ScaffoldView extends GetView<ScaffoldController> {
  const ScaffoldView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ScaffoldView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'ScaffoldView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
