import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/tab_bar_view_controller.dart';

class TabBarViewView extends GetView<TabBarViewController> {
  const TabBarViewView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TabBarViewView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'TabBarViewView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
