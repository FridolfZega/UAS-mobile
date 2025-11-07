import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/aspect_ration_controller.dart';

class AspectRationView extends GetView<AspectRationController> {
  const AspectRationView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AspectRationView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'AspectRationView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
