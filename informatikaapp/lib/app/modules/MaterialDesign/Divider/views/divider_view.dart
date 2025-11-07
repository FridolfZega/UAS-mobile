import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/divider_controller.dart';

class DividerView extends GetView<DividerController> {
  const DividerView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DividerView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'DividerView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
