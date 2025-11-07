import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/nested_scroll_view_controller.dart';

class NestedScrollViewView extends GetView<NestedScrollViewController> {
  const NestedScrollViewView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('NestedScrollViewView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'NestedScrollViewView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
