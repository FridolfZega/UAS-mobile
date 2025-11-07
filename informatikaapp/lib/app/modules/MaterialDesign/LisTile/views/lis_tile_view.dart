import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/lis_tile_controller.dart';

class LisTileView extends GetView<LisTileController> {
  const LisTileView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('LisTileView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'LisTileView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
