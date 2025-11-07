import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/dialog_controller.dart';

class DialogView extends GetView<DialogController> {
  const DialogView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DialogView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'DialogView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
