import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/size_box_controller.dart';

class SizeBoxView extends GetView<SizeBoxController> {
  const SizeBoxView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SizeBoxView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'SizeBoxView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
