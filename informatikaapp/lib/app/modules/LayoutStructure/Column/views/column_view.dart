import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/column_controller.dart';

class ColumnView extends GetView<ColumnController> {
  const ColumnView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ColumnView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'ColumnView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
