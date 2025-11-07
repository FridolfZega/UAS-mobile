import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/custom_scroll_view_controller.dart';

class CustomScrollViewView extends GetView<CustomScrollViewController> {
  const CustomScrollViewView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CustomScrollViewView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'CustomScrollViewView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
