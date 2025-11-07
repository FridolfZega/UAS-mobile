import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/local_storage_controller.dart';

class LocalStorageView extends GetView<LocalStorageController> {
  const LocalStorageView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('LocalStorageView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'LocalStorageView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
