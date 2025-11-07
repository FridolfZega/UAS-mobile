import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/text_forn_field_controller.dart';

class TextFornFieldView extends GetView<TextFornFieldController> {
  const TextFornFieldView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TextFornFieldView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'TextFornFieldView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
