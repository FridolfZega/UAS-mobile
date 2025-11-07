import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/input_forms_controller.dart';

class InputFormsView extends GetView<InputFormsController> {
  const InputFormsView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('InputFormsView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'InputFormsView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
