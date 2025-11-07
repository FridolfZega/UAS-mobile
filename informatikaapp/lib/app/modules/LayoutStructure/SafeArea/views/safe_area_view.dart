import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/safe_area_controller.dart';

class SafeAreaView extends GetView<SafeAreaController> {
  const SafeAreaView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SafeAreaView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'SafeAreaView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
