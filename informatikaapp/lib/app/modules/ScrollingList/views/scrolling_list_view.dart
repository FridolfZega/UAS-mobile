import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/scrolling_list_controller.dart';

class ScrollingListView extends GetView<ScrollingListController> {
  const ScrollingListView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ScrollingListView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'ScrollingListView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
