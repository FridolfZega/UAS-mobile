import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/single_child_scroll_view_controller.dart';

class SingleChildScrollViewView
    extends GetView<SingleChildScrollViewController> {
  const SingleChildScrollViewView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SingleChildScrollViewView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'SingleChildScrollViewView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
