import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/basic_widget_controller.dart';

class BasicWidgetView extends GetView<BasicWidgetController> {
  const BasicWidgetView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BasicWidgetView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'BasicWidgetView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
