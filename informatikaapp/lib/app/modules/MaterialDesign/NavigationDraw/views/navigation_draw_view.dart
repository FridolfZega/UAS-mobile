import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/navigation_draw_controller.dart';

class NavigationDrawView extends GetView<NavigationDrawController> {
  const NavigationDrawView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('NavigationDrawView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'NavigationDrawView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
