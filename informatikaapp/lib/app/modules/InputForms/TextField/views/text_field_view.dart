import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/text_field_controller.dart';

class TextFieldView extends GetView<TextFieldController> {
  const TextFieldView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TextFieldView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'TextFieldView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
