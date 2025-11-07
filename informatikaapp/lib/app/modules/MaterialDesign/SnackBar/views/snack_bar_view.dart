import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/snack_bar_controller.dart';

class SnackBarView extends GetView<SnackBarController> {
  const SnackBarView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SnackBarView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'SnackBarView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
