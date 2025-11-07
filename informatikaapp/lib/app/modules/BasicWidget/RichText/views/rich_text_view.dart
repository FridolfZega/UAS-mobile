import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/rich_text_controller.dart';

class RichTextView extends GetView<RichTextController> {
  const RichTextView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('RichTextView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'RichTextView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
