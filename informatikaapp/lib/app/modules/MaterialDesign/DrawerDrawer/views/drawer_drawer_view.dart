import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/drawer_drawer_controller.dart';

class DrawerDrawerView extends GetView<DrawerDrawerController> {
  const DrawerDrawerView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DrawerDrawerView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'DrawerDrawerView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
