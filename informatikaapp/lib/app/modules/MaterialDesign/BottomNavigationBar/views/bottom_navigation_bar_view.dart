import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/bottom_navigation_bar_controller.dart';

class BottomNavigationBarView extends GetView<BottomNavigationBarController> {
  const BottomNavigationBarView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BottomNavigationBarView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'BottomNavigationBarView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
