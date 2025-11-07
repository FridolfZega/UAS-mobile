import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/tab_bar_controller.dart';

class TabBarView extends GetView<TabBarController> {
  const TabBarView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TabBarView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'TabBarView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
