import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/align_controller.dart';

class AlignView extends GetView<AlignController> {
  const AlignView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AlignView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'AlignView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
