import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/scrollbar_controller.dart';

class ScrollbarView extends GetView<ScrollbarController> {
  const ScrollbarView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ScrollbarView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'ScrollbarView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
