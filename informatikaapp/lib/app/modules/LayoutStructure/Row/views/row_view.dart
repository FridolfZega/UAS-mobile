import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/row_controller.dart';

class RowView extends GetView<RowController> {
  const RowView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('RowView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'RowView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
