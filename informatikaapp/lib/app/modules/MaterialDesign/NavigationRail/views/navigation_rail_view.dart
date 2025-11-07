import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/navigation_rail_controller.dart';

class NavigationRailView extends GetView<NavigationRailController> {
  const NavigationRailView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('NavigationRailView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'NavigationRailView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
