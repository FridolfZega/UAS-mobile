import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/padding_controller.dart';

class PaddingView extends GetView<PaddingController> {
  const PaddingView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PaddingView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'PaddingView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
