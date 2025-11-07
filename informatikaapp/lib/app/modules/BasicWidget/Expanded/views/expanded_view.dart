import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/expanded_controller.dart';

class ExpandedView extends GetView<ExpandedController> {
  const ExpandedView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ExpandedView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'ExpandedView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
