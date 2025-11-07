import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/base_line_controller.dart';

class BaseLineView extends GetView<BaseLineController> {
  const BaseLineView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BaseLineView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'BaseLineView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
