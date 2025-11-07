import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/grid_view_controller.dart';

class GridViewView extends GetView<GridViewController> {
  const GridViewView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GridViewView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'GridViewView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
