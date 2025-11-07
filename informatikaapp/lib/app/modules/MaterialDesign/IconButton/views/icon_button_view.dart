import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/icon_button_controller.dart';

class IconButtonView extends GetView<IconButtonController> {
  const IconButtonView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('IconButtonView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'IconButtonView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
