import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/icon_controller.dart';

class IconView extends GetView<IconController> {
  const IconView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('IconView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'IconView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
