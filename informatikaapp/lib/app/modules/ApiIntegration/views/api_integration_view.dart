import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/api_integration_controller.dart';

class ApiIntegrationView extends GetView<ApiIntegrationController> {
  const ApiIntegrationView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ApiIntegrationView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'ApiIntegrationView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
